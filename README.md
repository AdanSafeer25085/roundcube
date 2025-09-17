# NavyGreen Roundcube Skins

Professional dark-themed Roundcube 1.6 skins with navy blue and deep green accents, inspired by Gmail and Outlook interfaces.

## Skins Included

### 1. NavyGreen Gmail (`navygreen_gmail`)
- Gmail-inspired layout with familiar interface elements
- Clean, minimalist design with Gmail-style navigation
- Optimized for widescreen displays

### 2. NavyGreen Outlook (`navygreen_outlook`)
- Outlook-inspired layout with structured panels
- Professional desktop-style interface
- Classic email client feel with modern styling

## Features

- ✅ **Responsive Design**: Works on desktop and mobile devices
- ✅ **Dark Theme**: Navy blue (#2B5A87) and deep green (#4A9B8E) color scheme
- ✅ **Complete Templates**: Login, mail, compose, calendar, contacts, settings
- ✅ **SVG Icons**: Scalable vector icons for crisp display
- ✅ **Plugin Compatible**: Works with standard Roundcube plugins
- ✅ **WCAG AA**: Accessible design with proper contrast ratios

## Installation Instructions

### Step 1: Copy Skin Files
```bash
# Copy both skins to your Roundcube skins directory
cp -r navygreen_gmail /path/to/roundcube/skins/
cp -r navygreen_outlook /path/to/roundcube/skins/
```

### Step 2: Update Roundcube Configuration
Edit your Roundcube `config/config.inc.php` file:

```php
// Add the skins to available skins list
$config['skin'] = 'navygreen_gmail'; // or 'navygreen_outlook'

// Optional: Allow users to choose skins
$config['dont_override'] = array();
```

### Step 3: Clear Cache (if applicable)
```bash
# Clear Roundcube cache if you have caching enabled
rm -rf /path/to/roundcube/temp/*
```

### Step 4: Verify Installation
1. Log into your Roundcube webmail
2. Go to Settings → User Interface
3. Select your preferred NavyGreen skin
4. Save settings and refresh

## File Structure

```
navygreen_gmail/
├── meta.json              # Skin metadata and configuration
├── styles/
│   ├── style.scss         # Source SCSS styles
│   └── style.css          # Compiled CSS
├── templates/             # Smarty templates
│   ├── login.html
│   ├── mail.html
│   ├── compose.html
│   ├── calendar.html
│   ├── addressbook.html
│   └── settings.html
├── icons/                 # SVG icons
│   ├── compose.svg
│   ├── inbox.svg
│   └── ...
└── images/               # Additional images

navygreen_outlook/        # Same structure for Outlook skin
```

## Customization

### Colors
The main colors can be customized in `styles/style.scss`:
- `$navy-blue: #2B5A87` - Primary navy color
- `$deep-green: #4A9B8E` - Accent green color
- `$dark-bg: #1a1a1a` - Dark background
- `$text-light: #ffffff` - Light text color

### Typography
Uses system fonts with fallbacks:
```scss
$font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
```

### Responsive Breakpoints
- Mobile: `< 768px`
- Tablet: `768px - 1024px`
- Desktop: `> 1024px`

## Browser Compatibility

- ✅ Chrome/Chromium 80+
- ✅ Firefox 75+
- ✅ Safari 13+
- ✅ Edge 80+
- ⚠️ Internet Explorer: Not supported

## Troubleshooting

### Skin Not Appearing
1. Check file permissions: `chmod -R 755 /path/to/roundcube/skins/navygreen_*`
2. Verify `meta.json` syntax is valid
3. Clear browser cache and Roundcube temp files

### Layout Issues
1. Ensure you're using Roundcube 1.6+
2. Check for plugin conflicts
3. Verify all template files are present

### Mobile Display Problems
1. Clear mobile browser cache
2. Check viewport meta tag is present
3. Test with different mobile browsers

## Support & Customization

### Development Requirements
- SCSS compiler for style modifications
- Basic knowledge of Smarty templating
- Understanding of Roundcube skin structure

### Making Changes
1. Edit SCSS files in `styles/style.scss`
2. Compile to CSS: `sass styles/style.scss styles/style.css`
3. Clear Roundcube cache
4. Refresh browser

## License

MIT License - Feel free to modify and distribute.

## Version History

- **v1.0.0** - Initial release
  - Complete Gmail and Outlook inspired skins
  - Full template coverage
  - Responsive design
  - SVG icon set
  - WCAG AA compliance

---

For technical support or customization requests, please refer to your Roundcube administrator or web developer.