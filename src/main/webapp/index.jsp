<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>Morrow — Curated Goods</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:opsz,wght@9..40,400;9..40,500;9..40,600;9..40,700&family=DM+Serif+Display:ital@0;1&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        /* ========== NEW ROOT – WARM & EARTHY ========== */
        :root {
            --bg: #f8f4ee;
            --bg-alt: #fffcf8;
            --card: #ffffff;
            --ink: #2e2b28;
            --ink-soft: #5c5751;
            --ink-muted: #9c958c;
            --clay: #c2795a;
            --clay-dark: #a85d40;
            --clay-soft: #f4e3d9;
            --sage: #6b8f71;
            --sage-soft: #e3ece4;
            --sand: #e8dfd4;
            --gold: #d4a24e;
            --radius: 20px;
            --radius-sm: 12px;
            --radius-xs: 8px;
            --shadow-sm: 0 1px 4px rgba(46, 43, 40, 0.04);
            --shadow: 0 6px 28px rgba(46, 43, 40, 0.06);
            --shadow-lg: 0 16px 56px rgba(46, 43, 40, 0.09);
            --ease: 0.3s cubic-bezier(0.25, 0.46, 0.45, 0.94);
            --container: 1300px;
        }

        /* ========== RESET ========== */
        * { box-sizing: border-box; margin: 0; padding: 0; }
        html { scroll-behavior: smooth; -webkit-text-size-adjust: 100%; }
        body {
            font-family: 'DM Sans', system-ui, -apple-system, sans-serif;
            background: var(--bg);
            color: var(--ink);
            line-height: 1.55;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }
        a { color: inherit; text-decoration: none; }
        img { display: block; max-width: 100%; }
        button { cursor: pointer; font-family: inherit; border: none; background: none; color: inherit; }
        input { font-family: inherit; }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 28px;
        }

        /* ========== UTILITIES ========== */
        .sr-only {
            position: absolute; width: 1px; height: 1px; padding: 0;
            margin: -1px; overflow: hidden; clip: rect(0,0,0,0); border: 0;
        }
        .muted { color: var(--ink-muted); }
        .text-center { text-align: center; }

        /* ========== BUTTONS ========== */
        .btn {
            display: inline-flex; align-items: center; justify-content: center;
            gap: 10px; padding: 14px 32px; border-radius: 999px;
            font-weight: 600; font-size: 15px; transition: var(--ease);
            border: 2px solid transparent; white-space: nowrap;
        }
        .btn-primary {
            background: var(--clay); color: #fff; border-color: var(--clay);
        }
        .btn-primary:hover {
            background: var(--clay-dark); border-color: var(--clay-dark);
            transform: translateY(-2px); box-shadow: 0 10px 30px rgba(194, 121, 90, 0.28);
        }
        .btn-dark {
            background: var(--ink); color: #fff; border-color: var(--ink);
        }
        .btn-dark:hover {
            background: #1f1d1b; border-color: #1f1d1b;
            transform: translateY(-2px); box-shadow: 0 10px 28px rgba(46, 43, 40, 0.22);
        }
        .btn-ghost-light {
            background: rgba(255,255,255,0.10); color: #fff;
            border-color: rgba(255,255,255,0.28);
        }
        .btn-ghost-light:hover {
            background: rgba(255,255,255,0.20); border-color: rgba(255,255,255,0.45);
            transform: translateY(-2px);
        }
        .btn-sm { padding: 9px 20px; font-size: 13px; }
        .btn-sage {
            background: var(--sage); color: #fff; border-color: var(--sage);
        }
        .btn-sage:hover {
            background: #5a7d60; border-color: #5a7d60;
            transform: translateY(-2px); box-shadow: 0 8px 24px rgba(107, 143, 113, 0.25);
        }

        /* ========== HEADER ========== */
        header {
            position: sticky; top: 0; z-index: 100;
            background: rgba(248, 244, 238, 0.86);
            backdrop-filter: blur(18px); -webkit-backdrop-filter: blur(18px);
            border-bottom: 1px solid rgba(46, 43, 40, 0.04);
        }
        .header-inner {
            display: flex; align-items: center; justify-content: space-between;
            gap: 18px; padding: 14px 0; min-height: 72px;
        }

        .brand {
            display: flex; align-items: center; gap: 10px;
            font-family: 'DM Serif Display', serif; font-weight: 400;
            font-size: 26px; letter-spacing: -0.5px; color: var(--ink);
            flex-shrink: 0;
        }
        .brand .dot { color: var(--clay); }
        .brand i {
            font-size: 24px; color: var(--clay);
            transition: transform var(--ease);
        }
        .brand:hover i { transform: rotate(-12deg); }

        nav.main-nav ul {
            display: flex; gap: 2px; list-style: none; align-items: center;
        }
        nav.main-nav li a {
            display: flex; align-items: center; gap: 7px;
            padding: 9px 18px; border-radius: 999px;
            font-weight: 500; font-size: 14px; color: var(--ink-soft);
            transition: var(--ease);
        }
        nav.main-nav li a:hover,
        nav.main-nav li a.active {
            background: var(--clay-soft); color: var(--clay-dark);
        }
        nav.main-nav li a i { font-size: 13px; }

        .header-actions {
            display: flex; align-items: center; gap: 4px; flex-shrink: 0;
        }
        .header-actions .icon-btn {
            width: 44px; height: 44px;
            display: grid; place-items: center;
            border-radius: 50%; font-size: 17px;
            color: var(--ink-soft); transition: var(--ease);
            position: relative;
        }
        .header-actions .icon-btn:hover {
            background: var(--clay-soft); color: var(--clay-dark);
            transform: scale(1.06);
        }

        .cart-wrap { position: relative; }
        .cart-count {
            position: absolute; top: 1px; right: 0;
            background: var(--clay); color: #fff;
            font-size: 10px; font-weight: 700;
            width: 19px; height: 19px; border-radius: 50%;
            display: grid; place-items: center;
            border: 2px solid var(--bg);
            transition: transform 0.2s var(--ease);
        }

        .search-wrap {
            display: flex; align-items: center;
            background: var(--card); border-radius: 999px;
            padding: 0 8px 0 18px;
            transition: var(--ease);
            border: 1.5px solid var(--sand);
            min-width: 230px;
            box-shadow: var(--shadow-sm);
        }
        .search-wrap:focus-within {
            border-color: var(--clay);
            box-shadow: 0 0 0 4px rgba(194, 121, 90, 0.10);
        }
        .search-wrap input {
            border: 0; background: transparent; outline: none;
            width: 100%; padding: 11px 0; font-size: 14px; color: var(--ink);
        }
        .search-wrap input::placeholder { color: var(--ink-muted); }
        .search-wrap button {
            padding: 9px 10px; color: var(--ink-muted);
            font-size: 14px; transition: var(--ease);
            border-radius: 50%;
        }
        .search-wrap button:hover { color: var(--clay); }

        .mobile-toggle {
            display: none; width: 44px; height: 44px;
            border-radius: 50%; font-size: 19px;
            background: var(--card); color: var(--ink);
            border: 1.5px solid var(--sand);
            transition: var(--ease);
        }
        .mobile-toggle:hover {
            background: var(--clay-soft); border-color: var(--clay-soft);
            color: var(--clay-dark);
        }

        #mobileMenu {
            display: none; background: var(--bg-alt);
            border-top: 1px solid var(--sand);
            padding: 14px 0 22px;
        }
        #mobileMenu ul {
            list-style: none; display: flex; flex-direction: column; gap: 3px;
        }
        #mobileMenu ul li a {
            display: flex; align-items: center; gap: 13px;
            padding: 13px 18px; border-radius: var(--radius-sm);
            font-weight: 500; color: var(--ink); transition: var(--ease);
        }
        #mobileMenu ul li a:hover {
            background: var(--clay-soft); color: var(--clay-dark);
        }
        #mobileMenu ul li a i { width: 20px; color: var(--ink-muted); }

        /* ========== HERO – SPLIT LAYOUT ========== */
        .hero {
            position: relative;
            display: grid;
            grid-template-columns: 1fr 1fr;
            align-items: center;
            gap: 40px;
            min-height: 540px;
            padding: 64px 0 72px;
            overflow: hidden;
        }
        .hero::before {
            content: '';
            position: absolute; inset: 0;
            background: radial-gradient(ellipse at 75% 40%, rgba(194, 121, 90, 0.07) 0%, transparent 60%);
            pointer-events: none;
        }
        .hero .container { display: contents; }
        .hero-text {
            position: relative; z-index: 2;
            padding-left: calc((100vw - var(--container)) / 2 + 28px);
        }
        .hero .eyebrow {
            display: inline-flex; align-items: center; gap: 8px;
            background: var(--clay-soft); color: var(--clay-dark);
            padding: 6px 18px; border-radius: 999px;
            font-weight: 600; font-size: 13px; letter-spacing: 0.2px;
            margin-bottom: 22px;
        }
        .hero .eyebrow i { font-size: 12px; }
        .hero h1 {
            font-family: 'DM Serif Display', serif;
            font-size: 58px; font-weight: 400;
            line-height: 1.08; letter-spacing: -1.5px;
            color: var(--ink); max-width: 540px; margin-bottom: 20px;
        }
        .hero h1 em {
            font-style: italic; color: var(--clay);
        }
        .hero p {
            color: var(--ink-soft); font-size: 17px;
            max-width: 440px; margin-bottom: 32px; line-height: 1.65;
        }
        .hero .actions { display: flex; gap: 12px; flex-wrap: wrap; }

        .hero-visual {
            position: relative; z-index: 1;
            display: flex; align-items: center; justify-content: center;
            padding-right: calc((100vw - var(--container)) / 2 + 28px);
        }
        .hero-visual .main-img {
            width: 100%; max-width: 460px;
            border-radius: 28px; overflow: hidden;
            box-shadow: var(--shadow-lg);
            aspect-ratio: 4 / 5;
            background: var(--sand);
        }
        .hero-visual .main-img img {
            width: 100%; height: 100%; object-fit: cover;
        }
        .hero-visual .floating-card {
            position: absolute;
            background: var(--card); border-radius: var(--radius);
            padding: 16px 20px; box-shadow: var(--shadow-lg);
            display: flex; align-items: center; gap: 12px;
            animation: float 4s ease-in-out infinite;
        }
        .hero-visual .floating-card.card-1 {
            bottom: 60px; left: -10px;
        }
        .hero-visual .floating-card.card-2 {
            top: 40px; right: 0;
            animation-delay: 1.5s;
        }
        .hero-visual .floating-card .fc-icon {
            width: 42px; height: 42px; border-radius: 50%;
            display: grid; place-items: center; font-size: 16px;
            background: var(--sage-soft); color: var(--sage);
            flex-shrink: 0;
        }
        .hero-visual .floating-card .fc-icon.clay {
            background: var(--clay-soft); color: var(--clay);
        }
        .hero-visual .floating-card .fc-text strong {
            display: block; font-size: 14px; font-weight: 700;
        }
        .hero-visual .floating-card .fc-text span {
            font-size: 12px; color: var(--ink-muted);
        }

        @keyframes float {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-12px); }
        }

        /* ========== SECTION ========== */
        .section { padding: 64px 0; }
        .section-header {
            display: flex; align-items: flex-end; justify-content: space-between;
            gap: 16px; margin-bottom: 36px; flex-wrap: wrap;
        }
        .section-header .title-group h2 {
            font-family: 'DM Serif Display', serif;
            font-size: 34px; font-weight: 400;
            letter-spacing: -0.5px; color: var(--ink);
        }
        .section-header .title-group p {
            color: var(--ink-soft); margin-top: 6px; font-size: 15px;
        }
        .section-header .view-all {
            font-weight: 600; color: var(--clay);
            display: flex; align-items: center; gap: 7px;
            font-size: 14px; transition: var(--ease);
            white-space: nowrap; padding: 8px 18px;
            border-radius: 999px; background: var(--clay-soft);
        }
        .section-header .view-all:hover {
            gap: 13px; background: var(--clay); color: #fff;
        }

        /* ========== CATEGORIES ========== */
        .categories-grid {
            display: grid; grid-template-columns: repeat(6, 1fr);
            gap: 18px;
        }
        .cat-card {
            background: var(--card); border-radius: var(--radius);
            padding: 28px 16px 24px; text-align: center;
            box-shadow: var(--shadow-sm); transition: var(--ease);
            cursor: pointer; border: 1.5px solid transparent;
            position: relative; overflow: hidden;
        }
        .cat-card::after {
            content: ''; position: absolute; bottom: 0; left: 50%;
            width: 0; height: 3px; background: var(--clay);
            border-radius: 3px 3px 0 0;
            transition: width var(--ease), left var(--ease);
        }
        .cat-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow);
            border-color: var(--clay-soft);
        }
        .cat-card:hover::after { width: 48px; left: calc(50% - 24px); }
        .cat-card .icon-wrap {
            width: 60px; height: 60px; border-radius: 18px;
            background: var(--clay-soft); display: grid; place-items: center;
            margin: 0 auto 14px; font-size: 24px; color: var(--clay);
            transition: var(--ease);
        }
        .cat-card:hover .icon-wrap {
            background: var(--clay); color: #fff;
            transform: scale(1.06) rotate(-4deg);
        }
        .cat-card h4 { font-size: 15px; font-weight: 600; }
        .cat-card .count {
            font-size: 13px; color: var(--ink-muted); margin-top: 4px;
        }

        /* ========== PRODUCTS ========== */
        .products-grid {
            display: grid; grid-template-columns: repeat(4, 1fr); gap: 24px;
        }
        .product-card {
            background: var(--card); border-radius: var(--radius);
            overflow: hidden; box-shadow: var(--shadow-sm);
            transition: var(--ease); display: flex; flex-direction: column;
            border: 1.5px solid transparent;
        }
        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow);
            border-color: var(--clay-soft);
        }
        .product-card .img-wrap {
            position: relative; overflow: hidden;
            background: var(--sand); aspect-ratio: 1 / 1;
        }
        .product-card .img-wrap img {
            width: 100%; height: 100%; object-fit: cover;
            transition: transform 0.5s var(--ease);
        }
        .product-card:hover .img-wrap img { transform: scale(1.05); }
        .product-card .badge {
            position: absolute; top: 14px; left: 14px;
            background: var(--clay); color: #fff;
            padding: 5px 14px; border-radius: 999px;
            font-size: 11px; font-weight: 700; letter-spacing: 0.4px;
        }
        .product-card .badge.sale {
            background: var(--gold); color: var(--ink);
        }
        .product-card .wish-btn {
            position: absolute; top: 14px; right: 14px;
            width: 38px; height: 38px; border-radius: 50%;
            background: rgba(255,255,255,0.92);
            display: grid; place-items: center; font-size: 15px;
            color: var(--ink-muted); transition: var(--ease);
            backdrop-filter: blur(4px);
            box-shadow: var(--shadow-sm);
        }
        .product-card .wish-btn:hover {
            background: #fff; color: var(--clay); transform: scale(1.12);
        }
        .product-card .body {
            padding: 18px 20px 12px; flex: 1;
            display: flex; flex-direction: column; gap: 5px;
        }
        .product-card .body .category-tag {
            font-size: 11px; color: var(--ink-muted);
            text-transform: uppercase; letter-spacing: 0.8px;
            font-weight: 600;
        }
        .product-card .body h5 {
            font-size: 15px; font-weight: 600; line-height: 1.35;
            display: -webkit-box; -webkit-line-clamp: 2;
            -webkit-box-orient: vertical; overflow: hidden;
        }
        .product-card .body .price-row {
            display: flex; align-items: center; gap: 10px; margin-top: 4px;
        }
        .product-card .body .price {
            font-weight: 700; font-size: 18px; color: var(--ink);
        }
        .product-card .body .old-price {
            color: var(--ink-muted); text-decoration: line-through; font-size: 13px;
        }
        .product-card .body .rating {
            display: flex; align-items: center; gap: 5px;
            font-size: 12px; color: var(--gold);
        }
        .product-card .body .rating span { color: var(--ink-muted); font-weight: 400; }
        .product-card .footer { padding: 0 20px 20px; display: flex; gap: 10px; }
        .product-card .footer .add-btn {
            flex: 1; padding: 11px; border-radius: var(--radius-sm);
            background: var(--ink); color: #fff;
            font-weight: 600; font-size: 14px; transition: var(--ease);
            display: flex; align-items: center; justify-content: center; gap: 8px;
        }
        .product-card .footer .add-btn:hover {
            background: var(--clay); transform: translateY(-1px);
        }
        .product-card .footer .add-btn.added { background: var(--sage); }

        /* ========== DEAL ========== */
        .deal-wrap {
            display: flex; gap: 0; background: var(--card);
            border-radius: 24px; overflow: hidden;
            box-shadow: var(--shadow);
        }
        .deal-wrap .deal-img {
            flex: 0 0 46%; background: var(--sand); min-height: 360px;
            position: relative; overflow: hidden;
        }
        .deal-wrap .deal-img img {
            width: 100%; height: 100%; object-fit: cover;
        }
        .deal-wrap .deal-img .deal-float {
            position: absolute; bottom: 24px; left: 24px;
            background: var(--clay); color: #fff;
            padding: 8px 20px; border-radius: 999px;
            font-weight: 700; font-size: 13px;
            display: flex; align-items: center; gap: 8px;
            box-shadow: 0 8px 24px rgba(194, 121, 90, 0.35);
        }
        .deal-wrap .deal-content {
            flex: 1; padding: 44px 48px;
            display: flex; flex-direction: column; justify-content: center;
        }
        .deal-wrap .deal-content .tag {
            display: inline-flex; align-items: center; gap: 6px;
            background: var(--gold); color: var(--ink);
            padding: 5px 16px; border-radius: 999px;
            font-size: 12px; font-weight: 700;
            text-transform: uppercase; letter-spacing: 0.6px;
            align-self: flex-start; margin-bottom: 14px;
        }
        .deal-wrap .deal-content h3 {
            font-family: 'DM Serif Display', serif;
            font-size: 32px; font-weight: 400; margin-bottom: 6px;
        }
        .deal-wrap .deal-content .desc {
            color: var(--ink-soft); margin-bottom: 20px; font-size: 15px;
        }
        .deal-wrap .deal-content .price-big {
            font-size: 34px; font-weight: 700; color: var(--ink);
        }
        .deal-wrap .deal-content .price-big .old {
            font-size: 20px; font-weight: 400;
            color: var(--ink-muted); text-decoration: line-through;
            margin-left: 12px;
        }
        .deal-wrap .deal-content .stock {
            font-size: 14px; color: var(--ink-soft); margin: 6px 0 20px;
        }
        .deal-wrap .deal-content .stock strong { color: var(--clay); }

        .timer-grid { display: flex; gap: 12px; margin: 18px 0 24px; }
        .timer-box {
            background: var(--ink); color: #fff;
            padding: 12px 18px; border-radius: var(--radius-sm);
            min-width: 72px; text-align: center;
        }
        .timer-box .num {
            font-size: 26px; font-weight: 700; line-height: 1.2;
            font-variant-numeric: tabular-nums;
        }
        .timer-box .label {
            font-size: 10px; opacity: 0.65;
            text-transform: uppercase; letter-spacing: 0.8px;
        }

        /* ========== TESTIMONIALS ========== */
        .testimonials-scroll {
            display: flex; gap: 22px; overflow-x: auto;
            padding: 8px 4px 20px; scroll-snap-type: x mandatory;
            -webkit-overflow-scrolling: touch;
        }
        .testimonials-scroll::-webkit-scrollbar { height: 4px; }
        .testimonials-scroll::-webkit-scrollbar-thumb {
            background: var(--clay-soft); border-radius: 999px;
        }
        .testimonial-card {
            flex: 0 0 360px; background: var(--card);
            border-radius: var(--radius); padding: 28px 30px;
            box-shadow: var(--shadow-sm); scroll-snap-align: start;
            transition: var(--ease); border: 1.5px solid transparent;
        }
        .testimonial-card:hover {
            box-shadow: var(--shadow); border-color: var(--clay-soft);
            transform: translateY(-3px);
        }
        .testimonial-card .stars {
            color: var(--gold); font-size: 15px;
            letter-spacing: 2px; margin-bottom: 12px;
        }
        .testimonial-card blockquote {
            font-size: 15px; line-height: 1.65;
            color: var(--ink-soft); margin-bottom: 18px;
            font-style: italic;
        }
        .testimonial-card .author {
            display: flex; align-items: center; gap: 13px;
        }
        .testimonial-card .author .avatar {
            width: 46px; height: 46px; border-radius: 50%;
            object-fit: cover; background: var(--sand);
        }
        .testimonial-card .author .name {
            font-weight: 600; font-size: 14px; color: var(--ink);
        }
        .testimonial-card .author .role {
            font-size: 12px; color: var(--ink-muted);
        }

        /* ========== NEWSLETTER ========== */
        .newsletter-wrap {
            background: var(--ink);
            border-radius: 24px; padding: 52px 60px;
            color: #fff; display: flex;
            align-items: center; justify-content: space-between;
            gap: 36px; flex-wrap: wrap;
            position: relative; overflow: hidden;
        }
        .newsletter-wrap::before {
            content: ''; position: absolute;
            top: -80px; right: -60px;
            width: 280px; height: 280px; border-radius: 50%;
            background: radial-gradient(circle, rgba(194,121,90,0.25) 0%, transparent 70%);
            pointer-events: none;
        }
        .newsletter-wrap .text { position: relative; z-index: 1; }
        .newsletter-wrap .text h3 {
            font-family: 'DM Serif Display', serif;
            font-size: 30px; font-weight: 400; margin-bottom: 6px;
        }
        .newsletter-wrap .text p { opacity: 0.7; font-size: 15px; }
        .newsletter-wrap form {
            display: flex; gap: 12px; flex-wrap: wrap;
            flex: 1; max-width: 500px; position: relative; z-index: 1;
        }
        .newsletter-wrap form input {
            flex: 1; min-width: 200px;
            padding: 15px 22px; border-radius: 999px;
            border: 1.5px solid rgba(255,255,255,0.15);
            font-size: 15px; background: rgba(255,255,255,0.06);
            color: #fff; transition: var(--ease); outline: none;
        }
        .newsletter-wrap form input::placeholder { color: rgba(255,255,255,0.45); }
        .newsletter-wrap form input:focus {
            border-color: var(--clay); background: rgba(255,255,255,0.10);
        }
        .newsletter-wrap form .btn {
            background: var(--clay); color: #fff; border-color: var(--clay);
            padding: 15px 34px;
        }
        .newsletter-wrap form .btn:hover {
            background: var(--clay-dark); border-color: var(--clay-dark);
        }
        #newsletterMsg {
            margin-top: 12px; font-size: 14px; opacity: 0.9; width: 100%;
        }

        /* ========== FOOTER ========== */
        footer {
            margin-top: 24px; padding: 56px 0 32px;
            border-top: 1px solid rgba(46, 43, 40, 0.06);
        }
        .footer-grid {
            display: grid; grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 44px; margin-bottom: 40px;
        }
        .footer-grid .brand-col .brand {
            font-size: 24px; margin-bottom: 10px;
        }
        .footer-grid .brand-col p {
            color: var(--ink-soft); font-size: 14px;
            max-width: 300px; line-height: 1.65;
        }
        .footer-grid .brand-col .socials {
            display: flex; gap: 10px; margin-top: 18px;
        }
        .footer-grid .brand-col .socials a {
            width: 42px; height: 42px; border-radius: 50%;
            background: var(--sand); display: grid; place-items: center;
            color: var(--ink-soft); transition: var(--ease); font-size: 16px;
        }
        .footer-grid .brand-col .socials a:hover {
            background: var(--clay); color: #fff; transform: translateY(-2px);
        }
        .footer-grid .col h5 {
            font-weight: 700; font-size: 13px;
            margin-bottom: 14px; color: var(--ink);
            text-transform: uppercase; letter-spacing: 0.8px;
        }
        .footer-grid .col ul {
            list-style: none; display: flex; flex-direction: column; gap: 8px;
        }
        .footer-grid .col ul li a {
            color: var(--ink-soft); font-size: 14px; transition: var(--ease);
        }
        .footer-grid .col ul li a:hover { color: var(--clay); }
        .footer-bottom {
            text-align: center; padding-top: 24px;
            border-top: 1px solid rgba(46, 43, 40, 0.06);
            color: var(--ink-muted); font-size: 13px;
        }

        /* ========== RESPONSIVE ========== */
        @media (max-width: 1200px) {
            .products-grid { grid-template-columns: repeat(3, 1fr); }
            .categories-grid { grid-template-columns: repeat(3, 1fr); }
            .footer-grid { grid-template-columns: 1fr 1fr; gap: 30px; }
            .hero h1 { font-size: 48px; }
            .hero-text { padding-left: 28px; }
            .hero-visual { padding-right: 28px; }
        }

        @media (max-width: 992px) {
            .hero {
                grid-template-columns: 1fr;
                min-height: auto; padding: 44px 0 52px; gap: 44px;
            }
            .hero-text { padding-left: 28px; padding-right: 28px; text-align: center; }
            .hero h1 { font-size: 42px; max-width: 100%; margin-left: auto; margin-right: auto; }
            .hero p { margin-left: auto; margin-right: auto; }
            .hero .actions { justify-content: center; }
            .hero-visual { padding-right: 28px; padding-left: 28px; }
            .hero-visual .main-img { max-width: 380px; }
            .hero-visual .floating-card.card-1 { left: 0; bottom: 30px; }
            .hero-visual .floating-card.card-2 { right: 0; top: 20px; }
            .deal-wrap { flex-direction: column; }
            .deal-wrap .deal-img { flex: 0 0 260px; min-height: 260px; }
            .deal-wrap .deal-content { padding: 32px 32px; }
            .newsletter-wrap { padding: 36px 32px; flex-direction: column; text-align: center; }
            .newsletter-wrap form { max-width: 100%; }
            .search-wrap { min-width: 160px; }
        }

        @media (max-width: 768px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: grid; place-items: center; }
            .products-grid { grid-template-columns: repeat(2, 1fr); gap: 14px; }
            .categories-grid { grid-template-columns: repeat(2, 1fr); gap: 12px; }
            .hero h1 { font-size: 34px; letter-spacing: -0.8px; }
            .hero p { font-size: 15px; }
            .section-header h2 { font-size: 26px; }
            .deal-wrap .deal-content h3 { font-size: 24px; }
            .deal-wrap .deal-content .price-big { font-size:
