#!/bin/bash
set -e

echo "Installing Groot 2..."
curl -L https://s3.us-west-1.amazonaws.com/download.behaviortree.dev/groot2_linux_installer/Groot2-v1.6.1-x86_64.AppImage -o /usr/local/bin/Groot2-v1.6.1-x86_64.AppImage

chmod +x /usr/local/bin/Groot2-v1.6.1-x86_64.AppImage

echo -e "#!/bin/bash\n/usr/local/bin/Groot2-v1.6.1-x86_64.AppImage --appimage-extract-and-run" > /usr/local/bin/groot
chmod +x /usr/local/bin/groot

echo "Groot 2 installed successfully!"
