# inovejas_mobprog

A new Flutter project.
# Lab Activity 0: discussion 
One of the primary challenges I encountered while setting up my Flutter development environment was getting the SDK files to run properly and making sure that all of the files and the PATH variable lined up. At first, I extracted the Flutter SDK into C:\Program Files\Flutter, which caused permission errors. VS Code failed to clone and initialize the SDK, and the extracted zip created an extra nested flutter folder. Because of this, my PATH entry pointed to the wrong location, so Command Prompt kept returning “‘flutter’ is not recognized as an internal or external command.”

To troubleshoot, I checked the folder structure to find where flutter.bat actually was, and I corrected the PATH entry. I also restarted Command Prompt and VS Code so that the new variable would load. I then moved the SDK to C:\src\flutter, a location without permission restrictions, and updated PATH to C:\src\flutter\bin. After that, flutter --version and flutter doctor -v ran properly, and creating the project worked.

These challenges gave me a better understanding of using the Flutter toolchain: Flutter depends on a correct PATH, writable SDK folders, the Dart and Flutter extensions in the editor, and platform-specific prerequisites for each target device. In future projects, I will install the SDK in a simple path such as C:\src\flutter and avoid Program Files. I will also restart my terminal after changing environment variables, run flutter doctor -v early to catch problems, and read the error logs carefully before changing anything.

Took a long time to set up a medium phone emulator due to confusion at first. Thought the problem was a poor installation of the SDK file but we troubleshoot and double checked there was a fail in the android phone licenses and it worked. Retried it again failed a couple of times until I asked our professor for help and showed the right way by flutter clean then flutter run. After a couple of times it worked out. Its just that the android phone took a while to boot up. 
