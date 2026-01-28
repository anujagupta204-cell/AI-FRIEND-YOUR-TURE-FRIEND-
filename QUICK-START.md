# 🚀 Voice AI Friend - QUICK START GUIDE

## ⭐ ONE-CLICK START (Windows)

The easiest way to get started is to double-click the startup file:

### **Option 1: Batch File (Recommended for All Users)**

1. Navigate to `c:\AI FREIND\` folder
2. **Double-click `start-server.bat`**
3. Wait 2-3 seconds
4. Your browser will automatically open to the website
5. Click the glowing ball and start talking! 🎤

That's it! The server will be running and ready.

---

## 📌 What Happens When You Click start-server.bat?

✅ Checks if Node.js is installed
✅ Installs npm dependencies (if needed)
✅ Starts the server on port 3000
✅ Automatically opens your browser
✅ AI Friend is ready to chat!

---

## 🔧 Alternative: PowerShell Script

If the batch file doesn't work:

1. Right-click `start-server.ps1`
2. Select "Run with PowerShell"
3. Browser will open automatically
4. Start chatting!

---

## 🎙️ How to Use Voice AI Friend

### Using Voice:
1. Click the **glowing crystal ball** 🔮
2. Speak clearly into your microphone
3. Wait for the response (instant!)
4. Click again to continue

### Using Text:
1. Type in the text box at the bottom
2. Press **Enter** or click the **Send button**
3. AI responds instantly
4. Click the **👩 Female** or **👨 Male** button to change voice

---

## 🖥️ What If the Server Doesn't Start?

### Issue: "Node.js is not installed"
**Solution:** Download and install Node.js from https://nodejs.org/

### Issue: Port 3000 is already in use
**Solution:** Either:
- Close the other application using port 3000
- Edit `config.js` and change the port number

### Issue: Batch file doesn't do anything
**Solution:** Try the PowerShell script instead:
- Right-click `start-server.ps1` → Run with PowerShell

---

## 🔄 To Stop the Server

**Option 1:** Close the Node.js window
**Option 2:** Press `Ctrl+C` in the terminal

---

## 🔧 Advanced: Auto-Start on Computer Boot

Want the server to start automatically every time you restart your computer?

### Step 1: Install PM2 globally
```
npm install -g pm2
```

### Step 2: Start server with PM2
```
cd c:\AI FREIND
pm2 start ecosystem.config.js
```

### Step 3: Enable auto-start on boot
```
pm2 startup
pm2 save
```

Now every time your computer restarts, Voice AI Friend will automatically start! 🚀

To check if it's running:
```
pm2 list
```

---

## 📋 Troubleshooting

| Problem | Solution |
|---------|----------|
| Microphone not working | Check browser permissions - allow microphone access |
| Voice not responding | Make sure server is running (green status in UI) |
| Text input not working | Check if WebSocket is connected |
| Slow responses | First time takes ~1s, then cached responses are instant |
| Browser shows "Connecting..." | Wait 3 seconds, server needs time to start |

---

## 📞 Need Help?

Check the main [README.md](README.md) for more details on:
- Configuration options
- Performance tuning
- API customization
- Dataset modification

---

**Enjoy chatting with your AI Friend! 🤍**
