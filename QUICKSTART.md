# Quick Start Commands

## 1️⃣ Push to GitHub (New Repository)

```powershell
# Navigate to project folder
cd "c:\Users\yuggu\Downloads\New folder (4)"

# Initialize git
git init

# Add files
git add .

# Commit
git commit -m "Add CircleCI RDP setup"

# Create new repo on GitHub, then:
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
git branch -M main
git push -u origin main
```

---

## 2️⃣ Push to GitHub (Existing Repository)

```powershell
cd "c:\Users\yuggu\Downloads\New folder (4)"
git add .circleci/config.yml
git commit -m "Add CircleCI RDP workflow"
git push
```

---

## 3️⃣ Essential Links

- **CircleCI Sign Up**: https://circleci.com/signup/
- **Tailscale Auth Keys**: https://login.tailscale.com/admin/settings/keys
- **CircleCI Dashboard**: https://app.circleci.com/

---

## ⚡ Quick Summary

1. Sign up for CircleCI (free, no credit card)
2. Create Tailscale auth key
3. Add key to CircleCI context (`tailscale-secrets`)
4. Push code to GitHub
5. Enable project in CircleCI
6. Trigger pipeline
7. Get RDP credentials from logs
8. Connect!

**You get 6,000 minutes/month = 100 hours FREE!**
