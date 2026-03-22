#!/bin/bash

# Apple News Daily - Daily Update Script
# This script fetches latest Apple news and creates new blog posts

cd /Users/jensen/apple-news-blog

echo "📰 Starting Apple News Daily update..."
echo "Date: $(date)"

# Get today's date for post filenames
TODAY=$(date +%Y-%m-%d)

# Create daily news post
cat > posts/daily-apple-news-${TODAY}.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Daily Apple news roundup - latest stories from AppleInsider, MacRumors, 9to5Mac, and more.">
    <title>Daily Apple News - Latest Updates</title>
    <link rel="stylesheet" href="../styles.css">
</head>
<body>
    <div class="container">
        <header>
            <a href="../index.html" class="home-link">← Back to Apple News Daily</a>
            <h1>Daily Apple News</h1>
            <p class="post-meta">Published $(date '+%B %d, %Y') • Daily News • <span class="read-time">5 min read</span></p>
        </header>

        <article class="post-content">
            <section class="lead">
                <p>Welcome to today's Apple News Daily! Here are the top stories from AppleInsider, MacRumors, 9to5Mac, and other Apple news sources.</p>
            </section>

            <section>
                <h2>📱 Top Stories Today</h2>
                <p><strong>Note:</strong> This is an automated daily news roundup. Full coverage coming soon with automated news fetching from multiple sources.</p>

                <h3>Coming Soon:</h3>
                <ul>
                    <li>Automated news aggregation from AppleInsider</li>
                    <li>Real-time updates from MacRumors</li>
                    <li>Curated stories from 9to5Mac</li>
                    <li>Daily tips and tricks for iOS and macOS</li>
                </ul>
            </section>

            <section>
                <h2>💡 Quick Tips</h2>
                <h3>Featured Today: iOS Spotlight Secrets</h3>
                <p>Did you know Spotlight can do math, convert units, and search the web? Just type your query directly into Spotlight (Cmd + Space) without opening any apps.</p>
            </section>

            <section class="related-posts">
                <h2>🔗 Related Posts</h2>
                <ul>
                    <li><a href="/posts/ios-18-4-features-hidden-gems.html">Everything New in iOS 18.4: Features, Changes, and Hidden Gems</a></li>
                    <li><a href="/posts/ios-18-features-change-how-you-use-iphone.html">5 iOS 18 Features That Will Change How You Use Your iPhone</a></li>
                    <li><a href="/posts/mac-keyboard-shortcuts-productivity.html">10 Mac Keyboard Shortcuts That Will Make You 50% More Productive</a></li>
                </ul>
            </section>
        </article>

        <footer>
            <p>© 2026 Apple News Daily. Curated from AppleInsider, MacRumors, 9to5Mac, and more.</p>
            <p>This site is not affiliated with Apple Inc.</p>
        </footer>
    </div>
</body>
</html>
EOF

echo "✅ Created daily news post: posts/daily-apple-news-${TODAY}.html"
echo "📝 Post added successfully!"
echo ""
echo "Next steps:"
echo "1. Update index.html with link to new post"
echo "2. Commit changes to git"
echo "3. Deploy to Cloudflare Pages"
