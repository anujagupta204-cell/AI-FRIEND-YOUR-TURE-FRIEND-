/**
 * PM2 Configuration for Voice AI Friend
 * This allows the server to run automatically and restart on crashes
 * 
 * Usage:
 * npm install -g pm2
 * pm2 start ecosystem.config.js
 * pm2 startup
 * pm2 save
 */

module.exports = {
  apps: [
    {
      name: 'voice-ai-friend',
      script: './server.js',
      description: 'Voice AI Friend - Real-time conversation server',
      exec_mode: 'fork',
      
      // Auto-restart on crash
      autorestart: true,
      watch: false,
      
      // Environment
      env: {
        NODE_ENV: 'production',
        PORT: 3000
      },
      
      // Logging
      error_file: './logs/error.log',
      out_file: './logs/out.log',
      log_date_format: 'YYYY-MM-DD HH:mm:ss',
      
      // Memory limits
      max_memory_restart: '500M',
      
      // Graceful shutdown
      kill_timeout: 5000,
      listen_timeout: 3000
    }
  ]
};
