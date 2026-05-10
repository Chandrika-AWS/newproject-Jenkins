<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
    <title>NexusShop | Modern Luxury E‑Commerce</title>

    <!-- Google Fonts & Font Awesome -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg-primary: #ffffff;
            --bg-secondary: #fafcff;
            --surface: #ffffff;
            --text-dark: #0a1c2f;
            --text-muted: #5b6e8c;
            --accent-primary: #6366f1;
            --accent-secondary: #d946ef;
            --accent-glow: rgba(99, 102, 241, 0.2);
            --success: #10b981;
            --card-shadow: 0 20px 35px -12px rgba(0, 0, 0, 0.05), 0 1px 2px rgba(0, 0, 0, 0.02);
            --card-hover: 0 30px 45px -15px rgba(99, 102, 241, 0.15);
            --border-light: rgba(0, 0, 0, 0.03);
            --gradient-hero: linear-gradient(135deg, rgba(10, 28, 47, 0.85), rgba(99, 102, 241, 0.75));
            --radius-xl: 28px;
            --radius-lg: 20px;
            --radius-md: 14px;
        }

        body {
            font-family: 'Inter', sans-serif;
            background: var(--bg-secondary);
            color: var(--text-dark);
            line-height: 1.5;
            scroll-behavior: smooth;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 32px;
        }

        /* modern glass header */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.85);
            backdrop-filter: blur(20px);
            border-bottom: 1px solid rgba(99, 102, 241, 0.08);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            padding: 16px 0;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-family: 'Space Grotesk', monospace;
            font-size: 26px;
            font-weight: 800;
            letter-spacing: -0.02em;
            background: linear-gradient(135deg, #0f172a, #6366f1);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        .brand-icon {
            background: linear-gradient(145deg, #6366f1, #d946ef);
            padding: 6px 10px;
            border-radius: 16px;
            font-size: 20px;
            color: white;
            background-clip: unset;
            -webkit-background-clip: unset;
        }

        nav.main-nav ul {
            display: flex;
            gap: 28px;
            list-style: none;
        }

        nav.main-nav a {
            text-decoration: none;
            font-weight: 500;
            color: var(--text-dark);
            transition: 0.2s;
            font-size: 0.95rem;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        nav.main-nav a i {
            font-size: 1rem;
            color: #6366f1;
        }

        nav.main-nav a:hover {
            color: var(--accent-primary);
        }

        .search-wrapper {
            background: white;
            border: 1px solid #eef2ff;
            border-radius: 60px;
            padding: 6px 6px 6px 18px;
            display: flex;
            align-items: center;
            gap: 10px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.02);
        }

        .search-wrapper input {
            border: none;
            background: transparent;
            outline: none;
            width: 220px;
            font-size: 0.85rem;
        }

        .search-wrapper button {
            background: var(--accent-primary);
            border: none;
            padding: 8px 16px;
            border-radius: 40px;
            color: white;
            cursor: pointer;
            transition: 0.2s;
        }

        .cart-icon {
            position: relative;
            background: #f1f5f9;
            padding: 10px 14px;
            border-radius: 40px;
            transition: 0.2s;
        }

        .cart-count {
            position: absolute;
            top: -6px;
            right: -6px;
            background: linear-gradient(145deg, #d946ef, #6366f1);
            border-radius: 30px;
            width: 20px;
            height: 20px;
            font-size: 11px;
            font-weight: bold;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
        }

        /* hero modern */
        .hero-modern {
            background: var(--gradient-hero), url('https://images.unsplash.com/photo-1556742393-d75f468bfcb0?auto=format&fit=crop&w=2000&q=80') center/cover no-repeat;
            border-radius: 0 0 48px 48px;
            margin-bottom: 20px;
            padding: 90px 20px;
            text-align: center;
            color: white;
        }

        .hero-modern h1 {
            font-size: 3.5rem;
            font-weight: 800;
            letter-spacing: -0.02em;
            max-width: 800px;
            margin: 0 auto 20px;
        }

        .btn-group {
            display: flex;
            gap: 16px;
            justify-content: center;
            flex-wrap: wrap;
        }

        .btn {
            padding: 12px 28px;
            border-radius: 40px;
            font-weight: 600;
            transition: all 0.25s;
            cursor: pointer;
            border: none;
            font-size: 0.9rem;
        }

        .btn-primary {
            background: white;
            color: #6366f1;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        .btn-outline-light {
            background: transparent;
            border: 1.5px solid rgba(255, 255, 255, 0.5);
            color: white;
        }

        .btn-primary:hover {
            transform: scale(1.02);
            background: #f8faff;
        }

        /* section headings */
        .section-head {
            text-align: center;
            margin-bottom: 48px;
        }

        .section-head h2 {
            font-size: 2.2rem;
            font-weight: 700;
            background: linear-gradient(135deg, #0f172a, #4f46e5);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        /* category cards */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(160px, 1fr));
            gap: 24px;
        }

        .cat-modern {
            background: white;
            border-radius: 28px;
            padding: 28px 16px;
            text-align: center;
            transition: all 0.3s cubic-bezier(0.2, 0.9, 0.4, 1.1);
            box-shadow: var(--card-shadow);
            border: 1px solid rgba(99, 102, 241, 0.05);
            cursor: pointer;
        }

        .cat-modern:hover {
            transform: translateY(-6px);
            box-shadow: var(--card-hover);
            border-color: #6366f130;
        }

        .cat-icon {
            background: linear-gradient(145deg, #eef2ff, #ffffff);
            width: 70px;
            height: 70px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            margin: 0 auto 16px;
            font-size: 32px;
            color: #6366f1;
        }

        /* products grid modern */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(270px, 1fr));
            gap: 28px;
        }

        .product-card {
            background: var(--surface);
            border-radius: 24px;
            overflow: hidden;
            transition: all 0.3s ease;
            box-shadow: var(--card-shadow);
            border: 1px solid #f0f2f5;
        }

        .product-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--card-hover);
        }

        .product-img {
            width: 100%;
            height: 240px;
            object-fit: cover;
            transition: transform 0.4s;
        }

        .product-card:hover .product-img {
            transform: scale(1.02);
        }

        .product-info {
            padding: 18px;
        }

        .price-badge {
            display: flex;
            justify-content: space-between;
            align-items: baseline;
            margin: 12px 0;
        }

        .current-price {
            font-size: 1.6rem;
            font-weight: 800;
            color: #0f172a;
        }

        .old-price {
            text-decoration: line-through;
            color: #94a3b8;
            font-size: 0.85rem;
        }

        .rating {
            color: #fbbf24;
            font-size: 0.8rem;
        }

        .add-cart-btn {
            width: 100%;
            background: #0f172a;
            color: white;
            border: none;
            padding: 12px;
            border-radius: 40px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.2s;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
        }

        .add-cart-btn:hover {
            background: #6366f1;
        }

        /* flash sale premium */
        .flash-sale {
            background: linear-gradient(125deg, #0f172a 0%, #1e293b 100%);
            border-radius: 48px;
            display: flex;
            flex-wrap: wrap;
            overflow: hidden;
            box-shadow: 0 25px 40px -12px rgba(0, 0, 0, 0.25);
        }

        .sale-image {
            flex: 1.2;
            min-height: 320px;
            background: url('https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80') center/cover;
        }

        .sale-content {
            flex: 1;
            padding: 48px 36px;
            color: white;
        }

        .timer-wrap {
            display: flex;
            gap: 15px;
            margin: 28px 0;
        }

        .time-unit {
            background: rgba(255, 255, 255, 0.12);
            backdrop-filter: blur(8px);
            padding: 12px 18px;
            border-radius: 24px;
            text-align: center;
            min-width: 75px;
        }

        .time-unit span:first-child {
            font-size: 28px;
            font-weight: 800;
            display: block;
        }

        /* testimonials */
        .testimonial-slider {
            display: flex;
            gap: 28px;
            overflow-x: auto;
            padding: 16px 4px 24px;
            scrollbar-width: thin;
        }

        .testi-card {
            background: white;
            border-radius: 28px;
            padding: 28px;
            min-width: 320px;
            box-shadow: var(--card-shadow);
            border: 1px solid #eef2ff;
        }

        /* newsletter premium */
        .newsletter-premium {
            background: linear-gradient(135deg, #eef2ff, #ffffff);
            border-radius: 48px;
            padding: 52px 28px;
            text-align: center;
            border: 1px solid rgba(99, 102, 241, 0.2);
        }

        .news-group {
            display: flex;
            justify-content: center;
            gap: 12px;
            flex-wrap: wrap;
            margin-top: 24px;
        }

        .news-group input {
            padding: 14px 22px;
            border-radius: 60px;
            border: 1px solid #cbd5e1;
            width: 320px;
            background: white;
        }

        /* footer */
        footer {
            background: #0f172a;
            color: #cbd5e6;
            border-radius: 32px 32px 0 0;
            margin-top: 60px;
            padding: 48px 32px 28px;
        }

        @media (max-width: 860px) {
            .container {
                padding: 0 20px;
            }

            nav.main-nav {
                display: none;
            }

            .mobile-toggle {
                display: block;
            }

            .hero-modern h1 {
                font-size: 2.2rem;
            }
        }

        .mobile-toggle {
            display: none;
            font-size: 24px;
            background: none;
            border: none;
        }

        .mobile-menu {
            background: white;
            border-top: 1px solid #eef2ff;
        }

        button:active {
            transform: scale(0.97);
        }

        .wishlist-btn {
            background: transparent;
            border: none;
            font-size: 1.1rem;
            cursor: pointer;
            color: #94a3b8;
        }
    </style>
</head>
<body>

<header>
    <div class="container header-inner">
        <div style="display: flex; align-items: center; gap: 20px;">
            <button class="mobile-toggle" id="mobileMenuToggle"><i class="fas fa-bars"></i></button>
            <div class="brand">
                <span class="brand-icon"><i class="fas fa-bolt"></i></span>
                <span>nexus<span style="background: linear-gradient(135deg,#6366f1,#d946ef); -webkit-background-clip:text; background-clip:text; color:transparent;">shop</span></span>
            </div>
        </div>

        <nav class="main-nav">
            <ul>
                <li><a href="#"><i class="fas fa-compass"></i> Explore</a></li>
                <li><a href="#trending"><i class="fas fa-chart-line"></i> Trending</a></li>
                <li><a href="#deals"><i class="fas fa-gem"></i> Drops</a></li>
                <li><a href="#"><i class="fas fa-store"></i> Studio</a></li>
            </ul>
        </nav>

        <div style="display: flex; gap: 20px; align-items: center;">
            <div class="search-wrapper">
                <input type="text" id="searchInput" placeholder="Search premium goods...">
                <button id="searchBtn"><i class="fas fa-search"></i></button>
            </div>
            <div class="cart-icon" id="cartBtn">
                <i class="fas fa-bag-shopping"></i>
                <span class="cart-count" id="cartCount">0</span>
            </div>
        </div>
    </div>

    <div id="mobileMenuPanel" style="display: none; background: white; border-top: 1px solid #eef2ff; padding: 16px 24px;">
        <ul style="list-style: none; display: flex; flex-direction: column; gap: 12px;">
            <li><a href="#">Home</a></li>
            <li><a href="#trending">Trending</a></li>
            <li><a href="#deals">Deals</a></li>
            <li><a href="#">Collections</a></li>
        </ul>
    </div>
</header>

<main>
    <!-- Hero section -->
    <section class="hero-modern">
        <div class="container">
            <h1>Beyond the ordinary.<br>Iconic essentials</h1>
            <p style="font-size: 1.1rem; max-width: 600px; margin: 0 auto 32px; opacity: 0.9;">Luxury design meets future tech — discover the most wanted pieces of the season.</p>
            <div class="btn-group">
                <button class="btn btn-primary" id="shopNowBtn"><i class="fas fa-arrow-right"></i> Shop now</button>
                <button class="btn btn-outline-light" id="exploreDealsBtn">Explore flash sale <i class="fas fa-fire"></i></button>
            </div>
        </div>
    </section>

    <!-- Categories section -->
    <div class="container" style="margin-top: 40px;">
        <div class="section-head">
            <h2>Curated collections</h2>
            <p style="color: #5b6e8c;">Shop by category — timeless edits</p>
        </div>
        <div class="categories-grid" id="categoriesGrid"></div>
    </div>

    <!-- Trending products -->
    <div class="container" id="trending" style="margin-top: 70px;">
        <div class="section-head">
            <h2>Electrifying drops</h2>
            <p style="color: #5b6e8c;">Editor's pick — high demand</p>
        </div>
        <div class="products-grid" id="productsGrid"></div>
    </div>

    <!-- Flash sale premium -->
    <div class="container" id="deals" style="margin-top: 70px;">
        <div class="flash-sale">
            <div class="sale-image"></div>
            <div class="sale-content">
                <h2 style="font-size: 2rem;">⚡ Flash drop: MacBook Air M2</h2>
                <p>Next‑gen performance, supercharged efficiency. available for limited time.</p>
                <div class="timer-wrap" id="timerContainer">
                    <div class="time-unit"><span id="dealDays">0</span> <span>Days</span></div>
                    <div class="time-unit"><span id="dealHours">00</span> <span>Hrs</span></div>
                    <div class="time-unit"><span id="dealMinutes">00</span> <span>Mins</span></div>
                    <div class="time-unit"><span id="dealSeconds">00</span> <span>Sec</span></div>
                </div>
                <div style="display: flex; align-items: baseline; gap: 14px; margin: 20px 0;">
                    <span style="font-size: 2.4rem; font-weight: 800;">$999</span>
                    <span style="text-decoration: line-through; opacity: 0.6;">$1,199</span>
                    <span style="background: #d946ef; padding: 4px 12px; border-radius: 40px; font-weight: 600;">-17%</span>
                </div>
                <button class="btn btn-primary" id="flashDealBtn" style="background: white; color:#0f172a;"><i class="fas fa-bolt"></i> Claim deal</button>
            </div>
        </div>
    </div>

    <!-- Testimonials -->
    <div class="container" style="margin-top: 80px;">
        <div class="section-head">
            <h2>Voices of the community</h2>
            <p>Trusted by 10k+ creators</p>
        </div>
        <div class="testimonial-slider" id="testimonialsWrapper">
            <div class="testi-card"><i class="fas fa-star" style="color:#fbbf24;"></i><i class="fas fa-star" style="color:#fbbf24;"></i><i class="fas fa-star" style="color:#fbbf24;"></i><i class="fas fa-star" style="color:#fbbf24;"></i><i class="fas fa-star" style="color:#fbbf24;"></i><p style="margin:12px 0;">"Absolute game changer! sleek design and delivery was faster than light."</p><div><strong>— Olivia Chen</strong></div></div>
            <div class="testi-card"><i class="fas fa-star" style="color:#fbbf24;"></i><i class="fas fa-star" style="color:#fbbf24;"></i><i class="fas fa-star" style="color:#fbbf24;"></i><i class="fas fa-star" style="color:#fbbf24;"></i><i class="fas fa-star-half-alt" style="color:#fbbf24;"></i><p style="margin:12px 0;">"The quality is insane. The attention to detail on every product is top tier."</p><div><strong>— Marcus Vega</strong></div></div>
            <div class="testi-card"><i class="fas fa-star" style="color:#fbbf24;"></i><i class="fas fa-star" style="color:#fbbf24;"></i><i class="fas fa-star" style="color:#fbbf24;"></i><i class="fas fa-star" style="color:#fbbf24;"></i><i class="fas fa-star" style="color:#fbbf24;"></i><p style="margin:12px 0;">"Incredible customer service & packaging. My new favorite store."</p><div><strong>— Sophia Laurent</strong></div></div>
        </div>
    </div>

    <!-- Newsletter premium -->
    <div class="container" style="margin-top: 70px; margin-bottom: 50px;">
        <div class="newsletter-premium">
            <i class="fas fa-envelope-open-text" style="font-size: 40px; color:#6366f1;"></i>
            <h2 style="margin: 12px 0;">Join the inner circle</h2>
            <p>Early access, exclusive drops & members-only benefits</p>
            <div class="news-group">
                <input type="email" id="newsEmail" placeholder="your@email.com">
                <button class="btn btn-primary" id="subscribeNewsBtn" style="background:#0f172a; color:white;">Subscribe</button>
            </div>
            <small id="newsMsg" style="display: block; margin-top: 12px;"></small>
        </div>
    </div>
</main>

<footer>
    <div style="display: flex; flex-wrap: wrap; justify-content: space-between; gap: 40px;">
        <div><strong style="font-size: 1.4rem;">nexus<span style="color:#6366f1">shop</span></strong><p style="margin-top: 12px;">Radical reimagination of e‑commerce</p></div>
        <div>Explore<br>Journal<br>Studio</div>
        <div>Support<br>Returns<br>FAQs</div>
        <div><i class="fab fa-instagram"></i> <i class="fab fa-twitter"></i> <i class="fab fa-linkedin"></i></div>
    </div>
    <hr style="border-color:#2d3a5e; margin: 28px 0 16px;">
    <div style="text-align: center; font-size: 13px;">© 2025 NexusShop — avant-garde commerce</div>
</footer>

<script>
    // ---- Enhanced data ----
    const CATEGORIES = [
        { id: "wear", name: "Luxe Wear", icon: "fa-tshirt" },
        { id: "tech", name: "Hyper Tech", icon: "fa-microchip" },
        { id: "audio", name: "Studio Audio", icon: "fa-headphones" },
        { id: "foot", name: "Sneaker Lab", icon: "fa-shoe-prints" },
        { id: "watch", name: "Chrono", icon: "fa-clock" },
        { id: "bag", name: "Carry Goods", icon: "fa-bag-shopping" }
    ];

    const PRODUCTS = [
        { id: 101, title: "iPhone 15 Pro", price: 1099, oldPrice: 1299, rating: 5, reviews: 213, img: "https://images.unsplash.com/photo-1695048133142-1a20484d2569?auto=format&fit=crop&w=600&q=80", category: "tech" },
        { id: 102, title: "M2 Macbook Pro", price: 1899, oldPrice: 2099, rating: 5, reviews: 98, img: "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80", category: "tech" },
        { id: 103, title: "Sony XM6", price: 399, rating: 5, reviews: 340, img: "https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80", category: "audio" },
        { id: 104, title: "Off-White Sneakers", price: 580, oldPrice: 890, rating: 4, reviews: 72, img: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=600&q=80", category: "foot" },
        { id: 105, title: "Minimalist Backpack", price: 149, rating: 5, reviews: 187, img: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80", category: "bag" },
        { id: 106, title: "Galaxy Watch Ultra", price: 379, oldPrice: 499, rating: 5, reviews: 210, img: "https://images.unsplash.com/photo-1579586337278-3befd40fd17a?auto=format&fit=crop&w=600&q=80", category: "watch" }
    ];

    let cartItemsCount = 0;

    // render categories with new style
    function renderCategories() {
        const grid = document.getElementById('categoriesGrid');
        grid.innerHTML = CATEGORIES.map(cat => `
            <div class="cat-modern" data-cat="${cat.name}">
                <div class="cat-icon"><i class="fas ${cat.icon}"></i></div>
                <h4 style="font-weight: 700;">${cat.name}</h4>
                <small style="color:#6366f1;">shop now →</small>
            </div>
        `).join('');
        document.querySelectorAll('.cat-modern').forEach(el => {
            el.addEventListener('click', () => {
                const catName = el.getAttribute('data-cat');
                document.getElementById('searchInput').value = catName;
                filterProducts(catName);
                document.getElementById('trending').scrollIntoView({ behavior: "smooth" });
            });
        });
    }

    function renderProducts(productsArray) {
        const grid = document.getElementById('productsGrid');
        grid.innerHTML = productsArray.map(p => `
            <div class="product-card">
                <img class="product-img" src="${p.img}" alt="${p.title}" loading="lazy">
                <div class="product-info">
                    <h3 style="font-size: 1.1rem;">${p.title}</h3>
                    <div class="price-badge">
                        <span class="current-price">$${p.price}</span>
                        ${p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : ''}
                    </div>
                    <div class="rating">${'★'.repeat(Math.floor(p.rating))} (${p.reviews})</div>
                    <button class="add-cart-btn" data-id="${p.id}"><i class="fas fa-shopping-bag"></i> add to cart</button>
                    <div style="display:flex; justify-content: flex-end; margin-top: 8px;"><button class="wishlist-btn" data-id="${p.id}"><i class="far fa-heart"></i></button></div>
                </div>
            </div>
        `).join('');

        document.querySelectorAll('.add-cart-btn').forEach(btn => {
            btn.addEventListener('click', (e) => {
                const id = parseInt(btn.dataset.id);
                addToCart(id);
            });
        });
    }

    function addToCart(productId) {
        cartItemsCount++;
        document.getElementById('cartCount').innerText = cartItemsCount;
        const btn = document.querySelector(`.add-cart-btn[data-id="${productId}"]`);
        if (btn) {
            const originalHtml = btn.innerHTML;
            btn.innerHTML = '<i class="fas fa-check"></i> added';
            setTimeout(() => btn.innerHTML = originalHtml, 1000);
        }
        // micro feedback
        const flash = document.createElement('div');
        flash.innerText = '✨ item added';
        flash.style.position = 'fixed'; flash.style.bottom = '20px'; flash.style.right = '20px';
        flash.style.background = '#0f172a'; flash.style.color = 'white'; flash.style.padding = '10px 18px'; flash.style.borderRadius = '40px';
        flash.style.zIndex = 999; flash.style.fontSize = '13px'; document.body.appendChild(flash);
        setTimeout(() => flash.remove(), 1500);
    }

    function filterProducts(query) {
        const term = query.toLowerCase();
        if (!term) return renderProducts(PRODUCTS);
        const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(term) || p.category.toLowerCase().includes(term));
        renderProducts(filtered);
    }

    // DEAL COUNTDOWN (fresh style)
    function initDealTimer() {
        const endTime = new Date().getTime() + (36 * 3600 * 1000);
        function tick() {
            const now = new Date().getTime();
            const diff = endTime - now;
            if (diff <= 0) {
                document.getElementById('dealDays').innerText = 0; document.getElementById('dealHours').innerText = "00";
                document.getElementById('dealMinutes').innerText = "00"; document.getElementById('dealSeconds').innerText = "00";
                return;
            }
            const days = Math.floor(diff / (1000 * 3600 * 24));
            const hours = Math.floor((diff % (86400000)) / 3600000);
            const mins = Math.floor((diff % 3600000) / 60000);
            const secs = Math.floor((diff % 60000) / 1000);
            document.getElementById('dealDays').innerText = days;
            document.getElementById('dealHours').innerText = hours < 10 ? '0' + hours : hours;
            document.getElementById('dealMinutes').innerText = mins < 10 ? '0' + mins : mins;
            document.getElementById('dealSeconds').innerText = secs < 10 ? '0' + secs : secs;
        }
        tick();
        setInterval(tick, 1000);
    }

    // Newsletter subscription
    document.getElementById('subscribeNewsBtn')?.addEventListener('click', () => {
        const email = document.getElementById('newsEmail').value.trim();
        const msgDiv = document.getElementById('newsMsg');
        if (!email || !email.includes('@')) {
            msgDiv.innerHTML = '✧ valid email needed ✧';
            msgDiv.style.color = '#ef4444';
        } else {
            msgDiv.innerHTML = '✔️ welcome to the inner circle. exclusive access unlocked.';
            msgDiv.style.color = '#10b981';
            document.getElementById('newsEmail').value = '';
            setTimeout(() => msgDiv.innerHTML = '', 3000);
        }
    });

    // interactions
    document.getElementById('shopNowBtn')?.addEventListener('click', () => document.getElementById('trending').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('exploreDealsBtn')?.addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('searchBtn')?.addEventListener('click', () => filterProducts(document.getElementById('searchInput').value));
    document.getElementById('searchInput')?.addEventListener('keypress', (e) => { if (e.key === 'Enter') filterProducts(e.target.value); });
    document.getElementById('flashDealBtn')?.addEventListener('click', () => { addToCart(102); alert('🔥 Limited MacBook M2 added to cart!'); });
    document.getElementById('mobileMenuToggle')?.addEventListener('click', () => {
        const panel = document.getElementById('mobileMenuPanel');
        panel.style.display = panel.style.display === 'none' ? 'block' : 'none';
    });

    renderCategories();
    renderProducts(PRODUCTS);
    initDealTimer();
    document.getElementById('cartCount').innerText = cartItemsCount;
    // cart button event
    document.getElementById('cartBtn')?.addEventListener('click', () => alert(`✨ Cart contains ${cartItemsCount} premium item(s). Checkout demo.`));
</script>
</body>
</html>
