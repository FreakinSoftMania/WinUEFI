const { execSync } = require('child_process');
const os = require('os');

if (os.platform() !== 'win32') {
  console.log('Not running on a Windows platform! Exiting...');
  process.exit(1);
} else {
  execSync('shutdown /fw /f /r /t 00');
}
