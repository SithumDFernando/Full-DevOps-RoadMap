# Exercises 02

1. **Simulate a network issue:** (Linux/macOS only)
   Run the `scripts/break-dns.sh` script using `sudo`.
   ```bash
   sudo ./scripts/break-dns.sh
   ```
2. **Diagnose the issue:**
   Try to run `curl -I https://github.com`. It should fail or return immediately with a connection refused error, because it's trying to connect to your own computer (`127.0.0.1`).
   Use `ping github.com` to observe where the traffic is routing.
3. **Fix the issue:**
   Open `/etc/hosts` in a text editor (using `sudo nano /etc/hosts` or `sudo vim /etc/hosts`) and remove the line `127.0.0.1 github.com`.
   Verify the fix by running `curl -I https://github.com` again.
