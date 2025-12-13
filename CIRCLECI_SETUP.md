# CircleCI Windows RDP Setup Guide

## 🎯 What You Get
- **6,000 FREE minutes/month** (100 hours)
- **No credit card required**
- **Windows Server 2022 with GUI**
- **Secure Tailscale VPN access**
- **6-hour sessions** (auto-renew by restarting)

---

## 📋 Setup Steps

### Step 1: Create CircleCI Account
1. Go to https://circleci.com/signup/
2. Sign up with GitHub (easiest)
3. **No credit card needed** ✅

### Step 2: Create Tailscale Auth Key
1. Go to https://login.tailscale.com/admin/settings/keys
2. Click **"Generate auth key"**
3. Settings:
   - ✅ Reusable
   - ✅ Ephemeral (optional but recommended)
   - Expiration: 90 days or more
4. **Copy the key** (starts with `tskey-auth-...`)

### Step 3: Add Tailscale Key to CircleCI
1. Go to https://app.circleci.com/
2. Select your organization
3. Go to **Organization Settings** (bottom left)
4. Click **Contexts** → **Create Context**
5. Name it: `tailscale-secrets`
6. Click the context → **Add Environment Variable**
   - Name: `TAILSCALE_AUTH_KEY`
   - Value: Paste your Tailscale auth key
7. Click **Add Environment Variable**

### Step 4: Push Your Project to GitHub
```powershell
# Navigate to your project folder
cd "c:\Users\yuggu\Downloads\New folder (4)"

# Initialize git (if not already)
git init

# Add files
git add .circleci/config.yml

# Commit
git commit -m "Add CircleCI RDP workflow"

# Create a new GitHub repository and push
# (Replace with your repo URL)
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git
git branch -M main
git push -u origin main
```

### Step 5: Enable Project in CircleCI
1. Go to https://app.circleci.com/projects
2. Click **Set Up Project** next to your repository
3. CircleCI will detect the `.circleci/config.yml` automatically
4. Click **Set Up Project**

### Step 6: Trigger the Workflow
1. In CircleCI dashboard, go to your project
2. Click **Trigger Pipeline** (top right)
3. Leave everything default → Click **Trigger Pipeline**

### Step 7: Get Your RDP Credentials
1. Click on the running workflow
2. Click on the `windows-rdp` job
3. Open the **"Maintain Connection"** step
4. You'll see:
   ```
   ==========================================
          RDP ACCESS READY
   ==========================================
   Address:  100.x.x.x
   Username: RDP
   Password: yOur#RanD0m@Pass
   ==========================================
   ```

### Step 8: Connect via RDP
1. Open **Remote Desktop Connection** on Windows
   - Press `Win + R` → type `mstsc` → Enter
2. Enter the Tailscale IP address
3. Click **Connect**
4. Enter credentials:
   - Username: `RDP`
   - Password: (from CircleCI logs)
5. Click **OK**

---

## ⏱️ Usage Limits

### Free Tier:
- **6,000 minutes/month** (100 hours)
- **1 concurrent job**
- Windows Server 2022

### Session Duration:
- **6 hours per session** (configured in workflow)
- After 6 hours, just trigger a new pipeline
- Can run multiple times per month until you hit 6,000 minutes

---

## 🔄 How to Restart After 6 Hours

When your session ends:
1. Go back to CircleCI
2. Click **Trigger Pipeline** again
3. New credentials will be generated
4. Connect with new IP/password

---

## 💡 Tips

### Extend Session Time
Edit `.circleci/config.yml`, line with `AddHours(6)`:
```yaml
$endTime = (Get-Date).AddHours(10)  # Change to 10 hours
```

### Monitor Usage
- Go to CircleCI → **Plan** → **Usage**
- Track remaining minutes

### Multiple Sessions Per Day
You can trigger unlimited pipelines, as long as total monthly usage stays under 6,000 minutes.

---

## 🆚 Comparison: CircleCI vs GitHub Actions

| Feature | CircleCI | GitHub Actions |
|---------|----------|----------------|
| Free Minutes | **6,000/month** | 2,000/month |
| Credit Card | ❌ Not required | ❌ Not required |
| Max Session | 6 hours (configurable) | 6 hours (default) |
| Windows GUI | ✅ Yes | ✅ Yes |
| Setup Difficulty | Easy | Easy |

---

## ❓ Troubleshooting

### "No valid plans" error
- Make sure you're on the Free plan
- Check that your GitHub account is connected

### Tailscale IP not assigned
- Verify your `TAILSCALE_AUTH_KEY` is correct
- Make sure the key is reusable

### Can't connect via RDP
- Ensure you're connected to Tailscale on your local machine
- Check firewall settings

### Workflow fails
- Check the job logs in CircleCI
- Verify the context name matches: `tailscale-secrets`

---

## 🎉 You're All Set!

You now have:
- ✅ 100 hours/month of FREE Windows RDP
- ✅ Secure Tailscale VPN connection
- ✅ No credit card required
- ✅ Easy restart system

**Enjoy your free Windows RDP!** 🚀
