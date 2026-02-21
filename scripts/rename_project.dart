import 'dart:io';

/// Script to elegantly rename the flutter_app_boilerplate to your new project name.
/// Run it with: dart run scripts/rename_project.dart your_new_project_name
void main(List<String> args) {
  if (args.isEmpty) {
    print('❌ Error: You must provide a new project name.');
    print('Usage: dart run scripts/rename_project.dart new_project_name');
    exit(1);
  }

  final newName = args[0];
  final oldName = 'flutter_app_boilerplate';
  
  if (!RegExp(r'^[a-z_][a-z0-9_]*$').hasMatch(newName)) {
    print('❌ Error: "$newName" is not a valid Dart package name.');
    print('Use lowercase letters and underscores only (e.g., my_super_app).');
    exit(1);
  }

  print('🔄 Renaming project from "$oldName" to "$newName"...');

  final currentDir = Directory.current;
  
  // List of directories and files to process
  final pathsToProcess = [
    'lib',
    'test',
    'pubspec.yaml',
    'README.md',
    'android/app/build.gradle.kts',
    'android/app/build.gradle',
    'android/app/src/main/AndroidManifest.xml',
    'ios/Runner/Info.plist',
  ];

  int replacedCount = 0;

  for (final relativePath in pathsToProcess) {
    final entity = FileSystemEntity.typeSync(relativePath);
    if (entity == FileSystemEntityType.directory) {
      final dir = Directory(relativePath);
      final files = dir.listSync(recursive: true).whereType<File>();
      for (final file in files) {
        if (_replaceInFile(file, oldName, newName)) {
          replacedCount++;
        }
      }
    } else if (entity == FileSystemEntityType.file) {
      if (_replaceInFile(File(relativePath), oldName, newName)) {
        replacedCount++;
      }
    }
  }

  print('✅ Successfully replaced $replacedCount files.');
  print('\n🚀 Next steps:');
  print('1. Delete the script: rm -rf scripts/');
  print('2. Run flutter pub get');
  print('3. If you want to refine bundle IDs (com.example.app), consider using the "rename" package.');
  print('   (flutter pub global activate rename && rename --bundleId com.yourorg.$newName)');
}

bool _replaceInFile(File file, String oldName, String newName) {
  try {
    // Only process text files (skip png, etc)
    if (!file.path.endsWith('.dart') && 
        !file.path.endsWith('.yaml') && 
        !file.path.endsWith('.md') && 
        !file.path.endsWith('.xml') && 
        !file.path.endsWith('.plist') &&
        !file.path.endsWith('.gradle') &&
        !file.path.endsWith('.kts')) {
      return false;
    }
    
    final content = file.readAsStringSync();
    if (content.contains(oldName)) {
      final updatedContent = content.replaceAll(oldName, newName);
      file.writeAsStringSync(updatedContent);
      return true;
    }
  } catch (e) {
    // Ignore binary decoding errors
  }
  return false;
}
