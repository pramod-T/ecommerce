<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop — UI Refresh</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

  <style>
    :root {
      --bg: #0b1020;
      --panel: rgba(255, 255, 255, 0.08);
      --panel-strong: rgba(255, 255, 255, 0.14);
      --card: #ffffff;
      --text: #111827;
      --muted: #6b7280;
      --line: rgba(255, 255, 255, 0.12);
      --brand: #7c3aed;
      --brand-2: #22c55e;
      --accent: #06b6d4;
      --surface: #f4f7fb;
      --shadow: 0 20px 50px rgba(15, 23, 42, 0.12);
      --radius: 24px;
      --container: 1240px;
    }

    * { box-sizing: border-box; }
    html { scroll-behavior: smooth; }
    body {
      margin: 0;
      font-family: Inter, system-ui, sans-serif;
      background: linear-gradient(180deg, #eef4ff 0%, #f7f9fc 42%, #ffffff 100%);
      color: var(--text);
    }

    img { max-width: 100%; display: block; }
    a { color: inherit; text-decoration: none; }
    button, input { font: inherit; }

    .container {
      width: min(var(--container), calc(100% - 32px));
      margin: 0 auto;
    }

    .top-shell {
      background:
        radial-gradient(circle at top left, rgba(124, 58, 237, 0.25), transparent 30%),
        radial-gradient(circle at top right, rgba(6, 182, 212, 0.18), transparent 28%),
        linear-gradient(160deg, #0b1020 0%, #111933 65%, #151f3f 100%);
      color: white;
      padding-bottom: 40px;
      border-bottom-left-radius: 32px;
      border-bottom-right-radius: 32px;
      box-shadow: 0 20px 60px rgba(11, 16, 32, 0.18);
    }

    header {
      position: sticky;
      top: 0;
      z-index: 50;
      backdrop-filter: blur(16px);
      background: rgba(11, 16, 32, 0.65);
      border-bottom: 1px solid var(--line);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 20px;
      padding: 16px 0;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 12px;
      font-weight: 800;
      letter-spacing: -0.03em;
      font-size: 1.25rem;
    }

    .brand-badge {
      width: 42px;
      height: 42px;
      border-radius: 14px;
      display: grid;
      place-items: center;
      background: linear-gradient(135deg, var(--brand), var(--accent));
      box-shadow: 0 12px 30px rgba(124, 58, 237, 0.35);
    }

    nav ul {
      list-style: none;
      display: flex;
      align-items: center;
      gap: 8px;
      margin: 0;
      padding: 0;
    }

    nav a {
      color: rgba(255,255,255,0.86);
      padding: 10px 14px;
      border-radius: 999px;
      font-weight: 600;
      font-size: 0.95rem;
    }

    nav a:hover,
    nav a.active {
      background: rgba(255,255,255,0.1);
      color: white;
    }

    .header-tools {
      display: flex;
      align-items: center;
      gap: 12px;
    }

    .search-bar {
      display: flex;
      align-items: center;
      gap: 10px;
      min-width: 300px;
      padding: 12px 16px;
      background: rgba(255,255,255,0.1);
      border: 1px solid rgba(255,255,255,0.08);
      border-radius: 999px;
    }

    .search-bar input {
      width: 100%;
      background: transparent;
      border: none;
      outline: none;
      color: white;
    }

    .search-bar input::placeholder { color: rgba(255,255,255,0.62); }

    .icon-circle {
      width: 44px;
      height: 44px;
      border-radius: 14px;
      border: 1px solid rgba(255,255,255,0.1);
      background: rgba(255,255,255,0.08);
      color: white;
      display: grid;
      place-items: center;
      cursor: pointer;
      position: relative;
    }

    .cart-count {
      position: absolute;
      top: -6px;
      right: -6px;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      font-size: 11px;
      font-weight: 800;
      background: linear-gradient(135deg, #fb7185, #f43f5e);
    }

    .mobile-toggle { display: none; }

    .hero {
      display: grid;
      grid-template-columns: 1.05fr 0.95fr;
      gap: 28px;
      padding: 34px 0 8px;
      align-items: center;
    }

    .hero-copy {
      padding: 26px 0;
    }

    .eyebrow {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      padding: 8px 12px;
      border-radius: 999px;
      background: rgba(255,255,255,0.1);
      border: 1px solid rgba(255,255,255,0.1);
      font-size: 0.92rem;
      margin-bottom: 18px;
    }

    .hero h1 {
      margin: 0;
      font-size: clamp(2.2rem, 5vw, 4.6rem);
      line-height: 0.98;
      letter-spacing: -0.05em;
      max-width: 720px;
    }

    .hero p {
      font-size: 1.06rem;
      color: rgba(255,255,255,0.78);
      max-width: 600px;
      margin: 20px 0 28px;
      line-height: 1.7;
    }

    .hero-actions {
      display: flex;
      flex-wrap: wrap;
      gap: 14px;
      margin-bottom: 28px;
    }

    .btn {
      border: none;
      cursor: pointer;
      border-radius: 999px;
      padding: 14px 22px;
      font-weight: 700;
      display: inline-flex;
      align-items: center;
      gap: 10px;
    }

    .btn-primary {
      background: linear-gradient(135deg, #8b5cf6, #06b6d4);
      color: white;
      box-shadow: 0 18px 30px rgba(124, 58, 237, 0.28);
    }

    .btn-secondary {
      background: rgba(255,255,255,0.08);
      color: white;
      border: 1px solid rgba(255,255,255,0.14);
    }

    .hero-stats {
      display: grid;
      grid-template-columns: repeat(3, minmax(0, 1fr));
      gap: 14px;
    }

    .stat {
      padding: 18px;
      border-radius: 18px;
      background: rgba(255,255,255,0.08);
      border: 1px solid rgba(255,255,255,0.1);
    }

    .stat strong {
      display: block;
      font-size: 1.25rem;
      margin-bottom: 6px;
    }

    .hero-visual {
      position: relative;
      min-height: 560px;
    }

    .glass-card {
      position: absolute;
      border-radius: 28px;
      background: rgba(255,255,255,0.1);
      border: 1px solid rgba(255,255,255,0.12);
      backdrop-filter: blur(16px);
      overflow: hidden;
      box-shadow: 0 18px 60px rgba(0,0,0,0.18);
    }

    .main-showcase {
      inset: 30px 24px 50px 70px;
    }

    .main-showcase img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .floating-tag {
      position: absolute;
      padding: 16px 18px;
      border-radius: 22px;
      background: white;
      color: var(--text);
      box-shadow: var(--shadow);
      min-width: 180px;
    }

    .tag-top {
      top: 18px;
      left: 10px;
    }

    .tag-bottom {
      right: 0;
      bottom: 10px;
    }

    .mini-pill {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      padding: 8px 12px;
      border-radius: 999px;
      background: #eef2ff;
      color: #4338ca;
      font-weight: 700;
      font-size: 0.85rem;
    }

    .content {
      padding: 42px 0 72px;
    }

    .section-head {
      display: flex;
      justify-content: space-between;
      align-items: end;
      gap: 16px;
      margin-bottom: 22px;
    }

    .section-head h2 {
      margin: 0;
      font-size: clamp(1.6rem, 3vw, 2.2rem);
      letter-spacing: -0.04em;
    }

    .section-head p {
      margin: 8px 0 0;
      color: var(--muted);
      max-width: 680px;
    }

    .chip-row {
      display: flex;
      flex-wrap: wrap;
      gap: 10px;
      margin-bottom: 26px;
    }

    .chip {
      border: none;
      border-radius: 999px;
      padding: 11px 16px;
      background: white;
      color: var(--text);
      font-weight: 700;
      box-shadow: 0 10px 22px rgba(15, 23, 42, 0.06);
      cursor: pointer;
    }

    .chip.active {
      background: linear-gradient(135deg, var(--brand), var(--accent));
      color: white;
    }

    .categories-grid {
      display: grid;
      grid-template-columns: repeat(4, minmax(0, 1fr));
      gap: 18px;
      margin-bottom: 44px;
    }

    .category-card {
      background: white;
      border-radius: 24px;
      padding: 22px;
      box-shadow: 0 14px 32px rgba(15, 23, 42, 0.06);
      border: 1px solid #eef2f7;
      transition: transform .18s ease, box-shadow .18s ease;
      cursor: pointer;
    }

    .category-card:hover,
    .product-card:hover,
    .deal-card:hover { transform: translateY(-4px); }

    .category-icon {
      width: 56px;
      height: 56px;
      display: grid;
      place-items: center;
      border-radius: 18px;
      background: linear-gradient(135deg, #ede9fe, #cffafe);
      color: #6d28d9;
      font-size: 1.25rem;
      margin-bottom: 14px;
    }

    .category-meta {
      display: flex;
      justify-content: space-between;
      align-items: center;
      gap: 12px;
    }

    .product-layout {
      display: grid;
      grid-template-columns: 1.25fr 0.75fr;
      gap: 22px;
      align-items: start;
      margin-bottom: 44px;
    }

    .products-grid {
      display: grid;
      grid-template-columns: repeat(3, minmax(0, 1fr));
      gap: 18px;
    }

    .product-card {
      background: white;
      border-radius: 26px;
      overflow: hidden;
      box-shadow: 0 14px 34px rgba(15, 23, 42, 0.08);
      border: 1px solid #edf2f7;
      position: relative;
      transition: transform .18s ease;
    }

    .product-media {
      position: relative;
      aspect-ratio: 1 / 1;
      background: #f8fafc;
    }

    .product-media img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .product-badge {
      position: absolute;
      top: 14px;
      left: 14px;
      padding: 8px 12px;
      border-radius: 999px;
      background: linear-gradient(135deg, #111827, #374151);
      color: white;
      font-size: 0.78rem;
      font-weight: 800;
    }

    .product-body {
      padding: 18px;
    }

    .product-title {
      font-size: 1rem;
      font-weight: 700;
      margin: 0 0 6px;
    }

    .product-sub {
      color: var(--muted);
      font-size: 0.92rem;
      margin-bottom: 16px;
      text-transform: capitalize;
    }

    .product-meta,
    .product-actions,
    .deal-row {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 12px;
    }

    .price-block strong {
      display: block;
      font-size: 1.15rem;
    }

    .price-block span {
      color: var(--muted);
      text-decoration: line-through;
      font-size: 0.88rem;
    }

    .rating {
      color: #f59e0b;
      font-size: 0.94rem;
      font-weight: 700;
    }

    .product-actions {
      margin-top: 16px;
    }

    .action-btn,
    .wishlist-btn {
      border: none;
      cursor: pointer;
      border-radius: 16px;
      padding: 12px 14px;
      font-weight: 700;
    }

    .action-btn {
      flex: 1;
      background: linear-gradient(135deg, #111827, #374151);
      color: white;
    }

    .wishlist-btn {
      background: #f3f4f6;
      color: #111827;
      width: 48px;
    }

    .deal-card {
      background: linear-gradient(135deg, #111827, #1f2937 65%, #0f172a 100%);
      color: white;
      border-radius: 28px;
      padding: 24px;
      box-shadow: 0 18px 36px rgba(15, 23, 42, 0.16);
      position: sticky;
      top: 96px;
    }

    .deal-card img {
      border-radius: 22px;
      width: 100%;
      height: 250px;
      object-fit: cover;
      margin: 18px 0;
    }

    .timer {
      display: grid;
      grid-template-columns: repeat(4, minmax(0, 1fr));
      gap: 10px;
      margin: 18px 0;
    }

    .time-box {
      padding: 12px 10px;
      border-radius: 18px;
      background: rgba(255,255,255,0.08);
      text-align: center;
      border: 1px solid rgba(255,255,255,0.08);
    }

    .time-box strong {
      display: block;
      font-size: 1.1rem;
    }

    .features {
      display: grid;
      grid-template-columns: repeat(3, minmax(0, 1fr));
      gap: 18px;
      margin-bottom: 44px;
    }

    .feature {
      background: white;
      border-radius: 24px;
      padding: 22px;
      box-shadow: 0 12px 28px rgba(15, 23, 42, 0.06);
      border: 1px solid #edf2f7;
    }

    .feature i {
      width: 52px;
      height: 52px;
      display: grid;
      place-items: center;
      border-radius: 16px;
      background: linear-gradient(135deg, #ede9fe, #cffafe);
      color: #6d28d9;
      margin-bottom: 14px;
      font-size: 1.1rem;
    }

    .newsletter {
      display: grid;
      grid-template-columns: 1fr auto;
      gap: 20px;
      align-items: center;
      background: linear-gradient(135deg, #7c3aed, #06b6d4);
      color: white;
      border-radius: 30px;
      padding: 28px;
      box-shadow: 0 20px 46px rgba(124, 58, 237, 0.22);
      margin-bottom: 40px;
    }

    .newsletter-form {
      display: flex;
      gap: 10px;
      flex-wrap: wrap;
      justify-content: flex-end;
    }

    .newsletter-form input {
      min-width: 280px;
      padding: 14px 16px;
      border-radius: 16px;
      border: none;
      outline: none;
    }

    footer {
      padding: 20px 0 44px;
      color: var(--muted);
    }

    .footer-grid {
      display: grid;
      grid-template-columns: 1.2fr 0.8fr 0.8fr 0.8fr;
      gap: 18px;
      background: white;
      border-radius: 28px;
      padding: 28px;
      box-shadow: 0 16px 36px rgba(15, 23, 42, 0.06);
      border: 1px solid #edf2f7;
    }

    .footer-grid h4,
    .footer-grid h3 {
      margin-top: 0;
      color: #111827;
    }

    .footer-grid p,
    .footer-grid a {
      color: var(--muted);
      line-height: 1.9;
    }

    .socials {
      display: flex;
      gap: 10px;
      margin-top: 14px;
    }

    .socials a {
      width: 40px;
      height: 40px;
      display: grid;
      place-items: center;
      border-radius: 14px;
      background: #f3f4f6;
      color: #111827;
    }

    @media (max-width: 1100px) {
      .hero,
      .product-layout,
      .newsletter,
      .footer-grid {
        grid-template-columns: 1fr;
      }

      .categories-grid,
      .features { grid-template-columns: repeat(2, minmax(0, 1fr)); }
      .products-grid { grid-template-columns: repeat(2, minmax(0, 1fr)); }
      .deal-card { position: static; }
    }

    @media (max-width: 820px) {
      nav { display: none; }
      .mobile-toggle { display: grid; }
      .search-bar { min-width: 0; width: 100%; }
      .header-inner { flex-wrap: wrap; }
      .header-tools { width: 100%; justify-content: space-between; }
      .hero-visual { min-height: 420px; }
      .main-showcase { inset: 20px 14px 44px 30px; }
      .categories-grid,
      .products-grid,
      .features,
      .hero-stats { grid-template-columns: 1fr; }
      .timer { grid-template-columns: repeat(2, minmax(0, 1fr)); }
    }

    @media (max-width: 560px) {
      .container { width: min(100% - 20px, var(--container)); }
      .top-shell { border-bottom-left-radius: 22px; border-bottom-right-radius: 22px; }
      .hero h1 { font-size: 2.2rem; }
      .hero-copy { padding-top: 8px; }
      .newsletter-form input { min-width: 100%; }
      .floating-tag { position: static; margin-top: 12px; }
      .hero-visual { display: flex; flex-direction: column; gap: 12px; min-height: auto; }
      .main-showcase { position: static; height: 320px; }
    }
  </style>
</head>

<body>
  <div class="top-shell">
    <header>
      <div class="container header-inner">
        <div class="brand">
          <div class="brand-badge"><i class="fa-solid fa-bag-shopping"></i></div>
          <span>NexusShop</span>
        </div>

        <nav aria-label="Primary navigation">
          <ul>
            <li><a href="#" class="active">Home</a></li>
            <li><a href="#categories">Categories</a></li>
            <li><a href="#products">Trending</a></li>
            <li><a href="#deal">Deals</a></li>
            <li><a href="#newsletter">Contact</a></li>
          </ul>
        </nav>

        <div class="header-tools">
          <div class="search-bar" role="search">
            <i class="fa-solid fa-magnifying-glass"></i>
            <input id="searchInput" type="search" placeholder="Search products, brands, categories..." />
          </div>
          <button class="icon-circle mobile-toggle" id="mobileToggle" aria-label="Toggle navigation">
            <i class="fa-solid fa-bars"></i>
          </button>
          <button class="icon-circle" aria-label="Wishlist"><i class="fa-regular fa-heart"></i></button>
          <button class="icon-circle" aria-label="Cart">
            <i class="fa-solid fa-bag-shopping"></i>
            <span class="cart-count" id="cartCount">0</span>
          </button>
        </div>
      </div>
    </header>

    <section class="container hero">
      <div class="hero-copy">
        <div class="eyebrow"><i class="fa-solid fa-sparkles"></i> New season arrivals are live</div>
        <h1>Shop smarter with a premium storefront UI.</h1>
        <p>
          A redesigned shopping experience with stronger visual hierarchy, cleaner cards, richer spacing,
          and a modern hero section that feels more like a real product brand.
        </p>
        <div class="hero-actions">
          <button class="btn btn-primary" id="shopNow">
            Shop collection <i class="fa-solid fa-arrow-right"></i>
          </button>
          <button class="btn btn-secondary" id="viewDeals">View flash deal</button>
        </div>
        <div class="hero-stats">
          <div class="stat"><strong>12k+</strong><span>Happy customers</span></div>
          <div class="stat"><strong>320+</strong><span>Premium products</span></div>
          <div class="stat"><strong>24/7</strong><span>Customer support</span></div>
        </div>
      </div>

      <div class="hero-visual">
        <div class="glass-card main-showcase">
          <img src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=1200&q=80" alt="Featured product showcase" />
        </div>
        <div class="floating-tag tag-top">
          <div class="mini-pill"><i class="fa-solid fa-truck-fast"></i> Free shipping</div>
          <p style="margin: 12px 0 0; color: var(--muted);">On selected orders over $99</p>
        </div>
        <div class="floating-tag tag-bottom">
          <strong style="display:block; font-size:1.2rem; margin-bottom:6px;">Summer sale</strong>
          <span style="color:var(--muted)">Save up to 40% this week</span>
        </div>
      </div>
    </section>
  </div>

  <main class="content">
    <section class="container" id="categories">
      <div class="section-head">
        <div>
          <h2>Browse by category</h2>
          <p>Each category is styled as a premium card with a quick route into filtered product results.</p>
        </div>
      </div>
      <div class="categories-grid" id="categoriesGrid"></div>
    </section>

    <section class="container" id="products">
      <div class="section-head">
        <div>
          <h2>Trending products</h2>
          <p>A more polished product gallery with spacious cards, cleaner pricing, and stronger call-to-action buttons.</p>
        </div>
      </div>

      <div class="chip-row" id="filterChips"></div>

      <div class="product-layout">
        <div class="products-grid" id="productsGrid
