# Lab 02: Networking CLI Tools

Let's use common CLI tools to debug network issues.

## 1. Using `curl`

Fetch the headers of a website:
```bash
curl -I https://github.com
```
**Expected Result:** You should see HTTP headers and a `HTTP/2 200` status.

## 2. DNS Lookups with `dig` (or `nslookup`)

Find the IP address of a domain:
```bash
dig github.com +short
# OR
nslookup github.com
```
**Expected Result:** You will see the IP addresses that resolve for `github.com`.

## 3. Checking Connectivity with `ping`

Check if a server is reachable (uses ICMP protocol):
```bash
ping -c 4 google.com
```
**Expected Result:** 4 packets transmitted, 4 received, 0% packet loss.

## 4. Tracing the Route

See the hops a packet takes to reach its destination:
```bash
# macOS / Linux
traceroute google.com
# Windows (in PowerShell/CMD)
tracert google.com
```
**Expected Result:** A numbered list of routers/gateways your traffic passes through.

## 5. SSH Configuration Check

Verify your SSH key is working with GitHub (we set this up in Lab 00):
```bash
ssh -T git@github.com
```
**Expected Result:** "Hi <username>! You've successfully authenticated..."
