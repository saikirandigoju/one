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
        /* ========= GREEN ROOT ========== */
        :root {
            --bg: #f2f7f2;
            --bg-alt: #f7fbf7;
            --card: #ffffff;
            --ink: #1f2e24;
            --ink-soft: #4a5d4f;
            --ink-muted: #8a9c8e;
            --clay: #4a8c5c;
            --clay-dark: #3a7049;
            --clay-soft: #e0f0e4;
            --sage: #6b9f7a;
            --sage-soft: #e3f0e6;
            --sand: #d9e8dc;
            --gold: #5a9e6f;
            --radius: 20px;
            --radius-sm: 12px;
            --radius-xs: 8px;
            --shadow-sm: 0 1px 4px rgba(31, 46, 36, 0.04);
            --shadow: 0 6px 28px rgba(31, 46, 36, 0.06);
            --shadow-lg: 0 16px 56px rgba(31, 46, 36, 0.09);
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

        /* ========== LOGIN GATE ========== */
        #loginGate {
            position: fixed;
            inset: 0;
            z-index: 9999;
            display: grid;
            place-items: center;
            background:
                radial-gradient(ellipse at 30% 20%, rgba(74, 140, 92, 0.18) 0%, transparent 55%),
                radial-gradient(ellipse at 80% 90%, rgba(107, 159, 122, 0.16) 0%, transparent 55%),
                var(--bg);
            padding: 24px;
        }
        #loginGate .login-card {
            width: 100%;
            max-width: 420px;
            background: var(--card);
            border-radius: 24px;
            box-shadow: var(--shadow-lg);
            padding: 44px 38px 36px;
            position: relative;
            overflow: hidden;
            animation: loginIn 0.5s var(--ease);
        }
        #loginGate .login-card::before {
            content: '';
            position: absolute;
            top: -60px; right: -60px;
            width: 180px; height: 180px; border-radius: 50%;
            background: radial-gradient(circle, rgba(74,140,92,0.14) 0%, transparent 70%);
            pointer-events: none;
        }
        @keyframes loginIn {
            from { opacity: 0; transform: translateY(18px) scale(0.98); }
            to   { opacity: 1; transform: translateY(0) scale(1); }
        }
        #loginGate .login-brand {
            display: flex; align-items: center; justify-content: center; gap: 10px;
            font-family: 'DM Serif Display', serif;
            font-size: 32px; font-weight: 400; letter-spacing: -0.5px;
            color: var(--ink); margin-bottom: 6px;
        }
        #loginGate .login-brand i { font-size: 28px; color: var(--clay); }
        #loginGate .login-brand .dot { color: var(--clay); }
        #loginGate .login-sub {
            text-align: center;
            color: var(--ink-soft);
            font-size: 14px;
            margin-bottom: 28px;
        }
        #loginGate .field {
            margin-bottom: 16px;
        }
        #loginGate .field label {
            display: block;
            font-size: 12px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.8px;
            color: var(--ink-soft);
            margin-bottom: 7px;
        }
        #loginGate .field .input-wrap {
            display: flex; align-items: center; gap: 10px;
            background: var(--bg-alt);
            border: 1.5px solid var(--sand);
            border-radius: var(--radius-sm);
            padding: 0 16px;
            transition: var(--ease);
        }
        #loginGate .field .input-wrap:focus-within {
            border-color: var(--clay);
            background: #fff;
            box-shadow: 0 0 0 4px rgba(74, 140, 92, 0.10);
        }
        #loginGate .field .input-wrap i {
            color: var(--ink-muted);
            font-size: 15px;
            flex-shrink: 0;
        }
        #loginGate .field input {
            flex: 1;
            border: 0;
            background: transparent;
            outline: none;
            padding: 13px 0;
            font-size: 15px;
            color: var(--ink);
        }
        #loginGate .field input::placeholder { color: var(--ink-muted); }
        #loginGate .toggle-pw {
            padding: 8px;
            color: var(--ink-muted);
            font-size: 14px;
            border-radius: 50%;
            transition: var(--ease);
        }
        #loginGate .toggle-pw:hover { color: var(--clay); }

        #loginGate .login-btn {
            width: 100%;
            margin-top: 8px;
            padding: 15px;
            border-radius: 999px;
            background: var(--clay);
            color: #fff;
            font-weight: 700;
            font-size: 15px;
            letter-spacing: 0.2px;
            display: flex; align-items: center; justify-content: center; gap: 10px;
            transition: var(--ease);
            border: 2px solid var(--clay);
        }
        #loginGate .login-btn:hover {
            background: var(--clay-dark);
            border-color: var(--clay-dark);
            transform: translateY(-2px);
            box-shadow: 0 10px 30px rgba(74, 140, 92, 0.30);
        }

        #loginError {
            display: none;
            margin-top: 14px;
            padding: 11px 16px;
            border-radius: var(--radius-xs);
            background: #fdecea;
            color: #b3402f;
            font-size: 13px;
            font-weight: 600;
            text-align: center;
            animation: shake 0.35s var(--ease);
        }
        @keyframes shake {
            0%, 100% { transform: translateX(0); }
            25% { transform: translateX(-5px); }
            75% { transform: translateX(5px); }
        }

        #loginGate .login-hint {
            margin-top: 20px;
            text-align: center;
            font-size: 12px;
            color: var(--ink-muted);
            line-height: 1.6;
            border-top: 1px solid var(--sand);
            padding-top: 16px;
        }
        #loginGate .login-hint strong { color: var(--clay-dark); }

        /* Hidden content until logged in */
        #siteContent { display: none; }
        #siteContent.visible { display: block; }

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
            transform: translateY(-2px); box-shadow: 0 10px 30px rgba(74, 140, 92, 0.28);
        }
        .btn-dark {
            background: var(--ink); color: #fff; border-color: var(--ink);
        }
        .btn-dark:hover {
            background: #16231b; border-color: #16231b;
            transform: translateY(-2px); box-shadow: 0 10px 28px rgba(31, 46, 36, 0.22);
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
            background: #5a8f6a; border-color: #5a8f6a;
            transform: translateY(-2px); box-shadow: 0 8px 24px rgba(107, 159, 122, 0.25);
        }

        /* ========== HEADER ========== */
        header {
            position: sticky; top: 0; z-index: 100;
            background: rgba(242, 247, 242, 0.86);
            backdrop-filter: blur(18px); -webkit-backdrop-filter: blur(18px);
            border-bottom: 1px solid rgba(31, 46, 36, 0.04);
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
            box-shadow: 0 0 0 4px rgba(74, 140, 92, 0.10);
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
            background: radial-gradient(ellipse at 75% 40%, rgba(74, 140, 92, 0.07) 0%, transparent 60%);
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
            background: var(--gold); color: #fff;
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
            box-shadow: 0 8px 24px rgba(74, 140, 92, 0.35);
        }
        .deal-wrap .deal-content {
            flex: 1; padding: 44px 48px;
            display: flex; flex-direction: column; justify-content: center;
        }
        .deal-wrap .deal-content .tag {
            display: inline-flex; align-items: center; gap: 6px;
            background: var(--gold); color: #fff;
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
            background: radial-gradient(circle, rgba(74,140,92,0.25) 0%, transparent 70%);
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
            border-top: 1px solid rgba(31, 46, 36, 0.06);
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
            border-top: 1px solid rgba(31, 46, 36, 0.06);
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
            .deal-wrap .deal-content .price-big { font-size: 28px; }
            .timer-box { min-width: 58px; padding: 9px 12px; }
            .timer-box .num { font-size: 20px; }
            .footer-grid { grid-template-columns: 1fr; gap: 24px; }
            .brand { font-size: 22px; }
            .brand i { font-size: 20px; }
            .search-wrap { min-width: 130px; padding: 0 6px 0 14px; }
            .search-wrap input { font-size: 13px; padding: 9px 0; }
            .header-actions .icon-btn { width: 38px; height: 38px; font-size: 15px; }
            .cart-count { width: 17px; height: 17px; font-size: 9px; }
            .testimonial-card { flex: 0 0 290px; padding: 22px 24px; }
            .hero .actions .btn { padding: 12px 22px; font-size: 14px; }
            .section { padding: 44px 0; }
            .hero-visual .floating-card { display: none; }
            #loginGate .login-card { padding: 32px 24px 28px; }
        }

        @media (max-width: 480px) {
            .products-grid { grid-template-columns: 1fr 1fr; gap: 10px; }
            .categories-grid { grid-template-columns: 1fr 1fr; gap: 10px; }
            .hero { padding: 32px 0 40px; }
            .hero h1 { font-size: 28px; }
            .hero .actions { flex-direction: column; align-items: stretch; }
            .hero .actions .btn { justify-content: center; }
            .container { padding: 0 16px; }
            .hero-text { padding-left: 16px; padding-right: 16px; }
            .hero-visual { padding-left: 16px; padding-right: 16px; }
            .deal-wrap .deal-content { padding: 24px 20px; }
            .deal-wrap .deal-img { flex: 0 0 190px; min-height: 190px; }
            .newsletter-wrap { padding: 28px 20px; }
            .newsletter-wrap .text h3 { font-size: 22px; }
            .product-card .body { padding: 12px 12px 8px; }
            .product-card .body h5 { font-size: 13px; }
            .product-card .body .price { font-size: 15px; }
            .product-card .footer { padding: 0 12px 12px; }
            .product-card .footer .add-btn { font-size: 12px; padding: 9px; }
            .timer-box { min-width: 48px; padding: 7px 8px; }
            .timer-box .num { font-size: 17px; }
            .timer-box .label { font-size: 8px; }
            .cat-card { padding: 18px 10px; }
            .cat-card .icon-wrap { width: 46px; height: 46px; font-size: 18px; border-radius: 14px; }
            .cat-card h4 { font-size: 12px; }
            .cat-card .count { font-size: 11px; }
            .section-header h2 { font-size: 22px; }
            .testimonial-card { flex: 0 0 260px; padding: 20px 22px; }
        }

        /* Reduced motion */
        @media (prefers-reduced-motion: reduce) {
            *, *::before, *::after {
                animation-duration: 0.01ms !important;
                transition-duration: 0.01ms !important;
            }
        }
    </style>
</head>

<body>

    <!-- ===== LOGIN GATE ===== -->
    <div id="loginGate">
        <div class="login-card">
            <div class="login-brand">
                <i class="fas fa-leaf"></i>
                <span>Morrow<span class="dot">.</span></span>
            </div>
            <p class="login-sub">Welcome back — please sign in to continue</p>

            <form id="loginForm" autocomplete="off">
                <div class="field">
                    <label for="loginUser">Username</label>
                    <div class="input-wrap">
                        <i class="far fa-user"></i>
                        <input type="text" id="loginUser" placeholder="Enter your username" required autocomplete="username" />
                    </div>
                </div>

                <div class="field">
                    <label for="loginPass">Password</label>
                    <div class="input-wrap">
                        <i class="fas fa-lock"></i>
                        <input type="password" id="loginPass" placeholder="Enter your password" required autocomplete="current-password" />
                        <button type="button" class="toggle-pw" id="togglePw" aria-label="Show password">
                            <i class="far fa-eye"></i>
                        </button>
                    </div>
                </div>

                <button type="submit" class="login-btn">
                    <i class="fas fa-arrow-right-to-bracket"></i> Sign in
                </button>

                <div id="loginError"></div>
            </form>

            <div class="login-hint">
                Demo credentials — <strong>saikiran</strong> / <strong>12345</strong>
            </div>
        </div>
    </div>

    <!-- ===== SITE CONTENT (hidden until login) ===== -->
    <div id="siteContent">

        <!-- ===== HEADER ===== -->
        <header>
            <div class="container header-inner">
                <div style="display:flex;align-items:center;gap:12px;">
                    <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu">
                        <em class="fas fa-bars"></em>
                    </button>
                    <a class="brand" href="#">
                        <em class="fas fa-leaf"></em>
                        <span>Morrow<span class="dot">.</span></span>
                    </a>
                </div>

                <nav class="main-nav" id="mainNav" aria-label="Main navigation">
                    <ul>
                        <li><a href="#" class="active"><i class="fas fa-house"></i> Home</a></li>
                        <li><a href="#categories"><i class="fas fa-grid-2"></i> Collections</a></li>
                        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                        <li><a href="#deals"><i class="fas fa-tag"></i> Offers</a></li>
                        <li><a href="#testimonials"><i class="fas fa-star"></i> Stories</a></li>
                    </ul>
                </nav>

                <div style="display:flex;align-items:center;gap:10px;">
                    <div class="search-wrap" role="search">
                        <input type="search" id="searchInput" placeholder="Search the collection..." aria-label="Search" />
                        <button id="searchBtn" aria-label="Submit search"><i class="fas fa-magnifying-glass"></i></button>
                    </div>

                    <div class="header-actions">
                        <button class="icon-btn" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
                        <button class="icon-btn" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
                        <div class="cart-wrap">
                            <button class="icon-btn" id="cartBtn" title="Cart" aria-label="Cart">
                                <i class="fas fa-bag-shopping"></i>
                            </button>
                            <span class="cart-count" id="cartCount">0</span>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Mobile Menu -->
            <div id="mobileMenu">
                <div class="container">
                    <ul>
                        <li><a href="#"><i class="fas fa-house"></i> Home</a></li>
                        <li><a href="#categories"><i class="fas fa-grid-2"></i> Collections</a></li>
                        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                        <li><a href="#deals"><i class="fas fa-tag"></i> Offers</a></li>
                        <li><a href="#testimonials"><i class="fas fa-star"></i> Stories</a></li>
                        <li><a href="#"><i class="far fa-user"></i> Account</a></li>
                        <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
                    </ul>
                </div>
            </div>
        </header>

        <!-- ===== MAIN ===== -->
        <main>

            <!-- HERO – SPLIT -->
            <section class="hero" aria-label="Hero banner">
                <div class="hero-text">
                    <div class="eyebrow"><i class="fas fa-seedling"></i> Spring Collection 2026</div>
                    <h1>Thoughtfully made.<br><em>Beautifully lived.</em></h1>
                    <p>Curated essentials for a slower, more intentional everyday. Free shipping on your first order — because good things should arrive effortlessly.</p>
                    <div class="actions">
                        <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop the collection</button>
                        <button class="btn btn-dark" id="exploreDeals"><i class="fas fa-clock"></i> Explore offers</button>
                    </div>
                </div>
                <div class="hero-visual">
                    <div class="main-img">
                        <img src="https://images.unsplash.com/photo-1490481651871-ab68de25d43d?auto=format&fit=crop&w=800&q=80" alt="Curated lifestyle collection" loading="eager">
                    </div>
                    <div class="floating-card card-1">
                        <div class="fc-icon"><i class="fas fa-star"></i></div>
                        <div class="fc-text">
                            <strong>4.9 rating</strong>
                            <span>2,400+ reviews</span>
                        </div>
                    </div>
                    <div class="floating-card card-2">
                        <div class="fc-icon clay"><i class="fas fa-truck-fast"></i></div>
                        <div class="fc-text">
                            <strong>Free shipping</strong>
                            <span>On orders over $50</span>
                        </div>
                    </div>
                </div>
            </section>

            <!-- CATEGORIES -->
            <section class="section" id="categories" aria-labelledby="cat-title">
                <div class="container">
                    <div class="section-header">
                        <div class="title-group">
                            <h2 id="cat-title">Browse collections</h2>
                            <p>Find your next favorite thing</p>
                        </div>
                        <a href="#" class="view-all">All collections <i class="fas fa-arrow-right"></i></a>
                    </div>
                    <div class="categories-grid" id="categoriesGrid" aria-live="polite"></div>
                </div>
            </section>

            <!-- PRODUCTS -->
            <section class="section" id="products" aria-labelledby="prod-title">
                <div class="container">
                    <div class="section-header">
                        <div class="title-group">
                            <h2 id="prod-title">Trending now</h2>
                            <p>Loved by our community — what's moving this week</p>
                        </div>
                        <a href="#" class="view-all">View all <i class="fas fa-arrow-right"></i></a>
                    </div>
                    <div class="products-grid" id="productsGrid" aria-live="polite"></div>
                </div>
            </section>

            <!-- DEAL -->
            <section class="section" id="deals" aria-labelledby="deals-title">
                <div class="container">
                    <div class="section-header">
                        <div class="title-group">
                            <h2 id="deals-title"><i class="fas fa-bolt" style="color:var(--gold);font-size:0.8em;margin-right:6px;"></i> Flash offer</h2>
                            <p>Limited stock — when it's gone, it's gone</p>
                        </div>
                    </div>
                    <div class="deal-wrap">
                        <div class="deal-img">
                            <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" loading="lazy">
                            <div class="deal-float"><i class="fas fa-bolt"></i> Limited time</div>
                        </div>
                        <div class="deal-content">
                            <span class="tag"><i class="fas fa-fire"></i> Save 17%</span>
                            <h3>MacBook Air M2</h3>
                            <p class="desc">Thin, light, and quietly powerful. The M2 chip makes everyday work feel effortless.</p>
                            <div>
                                <span class="price-big">$999 <span class="old">$1,199</span></span>
                            </div>
                            <p class="stock">Only <strong>12</strong> left — move quickly</p>
                            <div class="timer-grid" id="dealTimer">
                                <div class="timer-box">
                                    <div class="num" id="dealDays">0</div>
                                    <div class="label">Days</div>
                                </div>
                                <div class="timer-box">
                                    <div class="num" id="dealHours">00</div>
                                    <div class="label">Hours</div>
                                </div>
                                <div class="timer-box">
                                    <div class="num" id="dealMinutes">00</div>
                                    <div class="label">Mins</div>
                                </div>
                                <div class="timer-box">
                                    <div class="num" id="dealSeconds">00</div>
                                    <div class="label">Secs</div>
                                </div>
                            </div>
                            <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to cart</button>
                        </div>
                    </div>
                </div>
            </section>

            <!-- TESTIMONIALS -->
            <section class="section" id="testimonials" aria-labelledby="test-title">
                <div class="container">
                    <div class="section-header">
                        <div class="title-group">
                            <h2 id="test-title">Stories from our community</h2>
                            <p>Real people, real words</p>
                        </div>
                    </div>
                    <div class="testimonials-scroll" id="testimonialsList"></div>
                </div>
            </section>

            <!-- NEWSLETTER -->
            <section class="section" aria-labelledby="news-title">
                <div class="container">
                    <div class="newsletter-wrap">
                        <div class="text">
                            <h3 id="news-title">Stay in the loop</h3>
                            <p>Early access, thoughtful stories & quiet offers — no noise.</p>
                        </div>
                        <form id="newsletterForm" onsubmit="return false;">
                            <input type="email" id="newsletterEmail" placeholder="Your email address" aria-label="Email" required />
                            <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
                            <div id="newsletterMsg"></div>
                        </form>
                    </div>
                </div>
            </section>

        </main>

        <!-- ===== FOOTER ===== -->
        <footer>
            <div class="container">
                <div class="footer-grid">
                    <div class="brand-col">
                        <div class="brand">
                            <i class="fas fa-leaf"></i>
                            <span>Morrow<span class="dot">.</span></span>
                        </div>
                        <p>A small shop for thoughtful living. Quality goods, carefully chosen, with a gentle footprint.</p>
                        <div class="socials">
                            <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                            <a href="#" aria-label="Twitter"><i class="fab fa-x-twitter"></i></a>
                            <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                            <a href="#" aria-label="Pinterest"><i class="fab fa-pinterest-p"></i></a>
                        </div>
                    </div>
                    <div class="col">
                        <h5>Shop</h5>
                        <ul>
                            <li><a href="#">New arrivals</a></li>
                            <li><a href="#">Best sellers</a></li>
                            <li><a href="#">Gift cards</a></li>
                            <li><a href="#">Journal</a></li>
                        </ul>
                    </div>
                    <div class="col">
                        <h5>Help</h5>
                        <ul>
                            <li><a href="#">Contact us</a></li>
                            <li><a href="#">Shipping</a></li>
                            <li><a href="#">Returns</a></li>
                            <li><a href="#">FAQ</a></li>
                        </ul>
                    </div>
                    <div class="col">
                        <h5>About</h5>
                        <ul>
                            <li><a href="#">Our story</a></li>
                            <li><a href="#">Sustainability</a></li>
                            <li><a href="#">Careers</a></li>
                            <li><a href="#">Privacy</a></li>
                        </ul>
                    </div>
                </div>
                <div class="footer-bottom">
                    &copy; <span id="year"></span> Morrow. All rights reserved. Made with care.
                </div>
            </div>
        </footer>

    </div><!-- /#siteContent -->

    <!-- ===== SCRIPT ===== -->
    <script>
        // ============================================================
        // AUTH GATE — credentials: saikiran / 12345
        // ============================================================
        const VALID_USERNAME = 'saikiran';
        const VALID_PASSWORD = '12345';

        const loginGate   = document.getElementById('loginGate');
        const loginForm   = document.getElementById('loginForm');
        const loginUser   = document.getElementById('loginUser');
        const loginPass   = document.getElementById('loginPass');
        const loginError  = document.getElementById('loginError');
        const togglePw    = document.getElementById('togglePw');
        const siteContent = document.getElementById('siteContent');

        // show / hide password
        togglePw.addEventListener('click', () => {
            const isPw = loginPass.type === 'password';
            loginPass.type = isPw ? 'text' : 'password';
            togglePw.innerHTML = isPw
                ? '<i class="far fa-eye-slash"></i>'
                : '<i class="far fa-eye"></i>';
            togglePw.setAttribute('aria-label', isPw ? 'Hide password' : 'Show password');
        });

        loginForm.addEventListener('submit', (e) => {
            e.preventDefault();

            const user = loginUser.value.trim();
            const pass = loginPass.value;

            if (user === VALID_USERNAME && pass === VALID_PASSWORD) {
                // success — reveal site, hide gate
                loginError.style.display = 'none';
                loginGate.style.display = 'none';
                siteContent.classList.add('visible');
                document.body.style.overflow = '';

                // init the store once visible
                initStore();
            } else {
                loginError.textContent = 'Invalid username or password. Please try again.';
                loginError.style.display = 'block';
                loginError.style.animation = 'none';
                void loginError.offsetWidth;   // re-trigger shake
                loginError.style.animation = '';
                loginPass.value = '';
                loginPass.focus();
            }
        });

        // keep page behind gate from scrolling
        document.body.style.overflow = 'hidden';

        // ============================================================
        // STORE DATA
        // ============================================================
        const CATEGORIES = [
            { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-screen', count: 24 },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
            { id: 'clothing', name: 'Clothing', icon: 'fa-shirt', count: 42 },
            { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 31 },
            { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
            { id: 'accessories', name: 'Accessories', icon: 'fa-watch', count: 39 }
        ];

        const PRODUCTS = [
            { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New',
                img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
                category: 'Smartphones' },
            { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, badge: '',
                img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
                category: 'Laptops' },
            { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, badge: '',
                img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
                category: 'Footwear' },
            { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, badge: 'New',
                img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
                category: 'Gadgets' },
            { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, badge: '',
                img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, badge: '',
                img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
                category: 'Gadgets' }
        ];

        const TESTIMONIALS = [{
            name: 'Ava Martin',
            role: 'Verified buyer',
            avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',
            text: 'Fast shipping and genuinely kind support. The product felt even better in person — exceeded every expectation.',
            stars: 5
        }, {
            name: 'Michael Lee',
            role: 'Frequent shopper',
            avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80',
            text: 'Great selection and a checkout that doesn\'t make me think. Will absolutely come back.',
            stars: 4
        }, {
            name: 'Sophia Chen',
            role: 'Designer',
            avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80',
            text: 'The quality and packaging are quietly beautiful. Everything arrived in perfect condition.',
            stars: 5
        }, {
            name: 'James Wilson',
            role: 'Tech enthusiast',
            avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',
            text: 'Honestly the best price I found on electronics. The M2 MacBook deal was unbeatable.',
            stars: 5
        }];

        // ============================================================
        // STATE
        // ============================================================
        let cartCount = 0;
        let storeInitialised = false;

        // ============================================================
        // DOM REFS (store)
        // ============================================================
        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const cartCountEl = document.getElementById('cartCount');
        const searchInput = document.getElementById('searchInput');
        const searchBtn = document.getElementById('searchBtn');
        const mobileToggle = document.getElementById('mobileToggle');
        const mobileMenu = document.getElementById('mobileMenu');
        const newsletterForm = document.getElementById('newsletterForm');
        const newsletterEmail = document.getElementById('newsletterEmail');
        const newsletterMsg = document.getElementById('newsletterMsg');
        const testimonialsList = document.getElementById('testimonialsList');

        // ============================================================
        // RENDER
        // ============================================================
        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const el = document.createElement('div');
                el.className = 'cat-card';
                el.innerHTML = `
                    <div class="icon-wrap"><i class="fas ${cat.icon}"></i></div>
                    <h4>${cat.name}</h4>
                    <div class="count">${cat.count} items</div>
                `;
                el.addEventListener('click', () => {
                    searchInput.value = cat.name;
                    filterProducts(cat.name);
                    document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
                });
                categoriesGrid.appendChild(el);
            });
        }

        function renderProducts(list) {
            productsGrid.innerHTML = '';
            if (!list.length) {
                productsGrid.innerHTML =
                `<p style="grid-column:1/-1;text-align:center;padding:48px;color:var(--ink-muted);font-size:15px;">No products matched your search.</p>`;
                return;
            }
            list.forEach(p => {
                const el = document.createElement('article');
                el.className = 'product-card';
                const badgeClass = p.badge === 'Sale' ? 'sale' : '';
                const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
                const oldPriceHtml = p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : '';
                const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
                el.innerHTML = `
                    <div class="img-wrap">
                        <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
                        ${badgeHtml}
                        <button class="wish-btn" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
                    </div>
                    <div class="body">
                        <div class="category-tag">${p.category}</div>
                        <h5>${escapeHtml(p.title)}</h5>
                        <div class="price-row">
                            <span class="price">$${p.price.toLocaleString()}</span>
                            ${oldPriceHtml}
                        </div>
                        <div class="rating">
                            ${stars} <span>(${p.reviews})</span>
                        </div>
                    </div>
                    <div class="footer">
                        <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });

            productsGrid.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', function(e) {
                    e.stopPropagation();
                    const id = Number(this.dataset.id);
                    addToCart(id, this);
                });
            });
        }

        function renderTestimonials() {
            testimonialsList.innerHTML = '';
            TESTIMONIALS.forEach(t => {
                const stars = '★'.repeat(t.stars) + '☆'.repeat(5 - t.stars);
                const el = document.createElement('div');
                el.className = 'testimonial-card';
                el.innerHTML = `
                    <div class="stars">${stars}</div>
                    <blockquote>“${escapeHtml(t.text)}”</blockquote>
                    <div class="author">
                        <img class="avatar" src="${t.avatar}" alt="${escapeHtml(t.name)}" loading="lazy">
                        <div>
                            <div class="name">${escapeHtml(t.name)}</div>
                            <div class="role">${escapeHtml(t.role)}</div>
                        </div>
                    </div>
                `;
                testimonialsList.appendChild(el);
            });
        }

        // ============================================================
        // UTILITIES
        // ============================================================
        function escapeHtml(text) {
            return String(text).replace(/[&<>"']/g, s => ({
                '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;'
            } [s]));
        }

        function updateCartCount() {
            cartCountEl.textContent = cartCount;
            cartCountEl.style.transform = 'scale(1.35)';
            setTimeout(() => cartCountEl.style.transform = 'scale(1)', 200);
        }

        function addToCart(productId, btnEl) {
            const p = PRODUCTS.find(x => x.id === productId);
            if (!p) return;
            cartCount++;
            updateCartCount();
            if (btnEl) {
                const orig = btnEl.innerHTML;
                btnEl.innerHTML = '<i class="fas fa-check"></i> Added';
                btnEl.classList.add('added');
                setTimeout(() => {
                    btnEl.innerHTML = orig;
                    btnEl.classList.remove('added');
                }, 1500);
            }
            const cartBtn = document.getElementById('cartBtn');
            cartBtn.style.color = 'var(--clay)';
            setTimeout(() => cartBtn.style.color = '', 450);
        }

        function filterProducts(query) {
            const q = String(query || '').trim().toLowerCase();
            if (!q) { renderProducts(PRODUCTS); return; }
            const filtered = PRODUCTS.filter(p =>
                p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q)
            );
            renderProducts(filtered);
        }

        // ============================================================
        // DEAL TIMER
        // ============================================================
        function setupDealTimer() {
            const now = new Date();
            const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000);
            function tick() {
                const diff = target - new Date();
                if (diff <= 0) {
                    document.getElementById('dealDays').textContent = '0';
                    document.getElementById('dealHours').textContent = '00';
                    document.getElementById('dealMinutes').textContent = '00';
                    document.getElementById('dealSeconds').textContent = '00';
                    return;
                }
                const days = Math.floor(diff / (24 * 3600 * 1000));
                const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
                const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
                const secs = Math.floor((diff % (60 * 1000)) / 1000);
                document.getElementById('dealDays').textContent = days;
                document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
                document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
                document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
            }
            tick();
            setInterval(tick, 1000);
        }

        // ============================================================
        // EVENT BINDINGS (store)
        // ============================================================
        function bindStoreEvents() {
            searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
            searchInput.addEventListener('keydown', (e) => {
                if (e.key === 'Enter') filterProducts(e.target.value);
            });

            mobileToggle.addEventListener('click', () => {
                const isOpen = mobileMenu.style.display === 'block';
                mobileMenu.style.display = isOpen ? 'none' : 'block';
                mobileToggle.innerHTML = isOpen ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
            });

            mobileMenu.querySelectorAll('a').forEach(link => {
                link.addEventListener('click', () => {
                    mobileMenu.style.display = 'none';
                    mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
                });
            });

            document.getElementById('shopNow').addEventListener('click', () => {
                document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
            });
            document.getElementById('exploreDeals').addEventListener('click', () => {
                document.getElementById('deals').scrollIntoView({ behavior: 'smooth', block: 'start' });
            });

            document.getElementById('buyDeal').addEventListener('click', function() {
                cartCount++;
                updateCartCount();
                const orig = this.innerHTML;
                this.innerHTML = '<i class="fas fa-check"></i> Added!';
                this.style.background = 'var(--sage)';
                this.style.borderColor = 'var(--sage)';
                setTimeout(() => {
                    this.innerHTML = orig;
                    this.style.background = '';
                    this.style.borderColor = '';
                }, 1600);
            });

            newsletterForm.addEventListener('submit', (e) => {
                e.preventDefault();
                const email = newsletterEmail.value.trim();
                if (!email || !email.includes('@')) {
                    newsletterMsg.textContent = 'Please enter a valid email address.';
                    newsletterMsg.style.color = '#a4d4b4';
                    newsletterMsg.style.display = 'block';
                    return;
                }
                newsletterMsg.textContent = '🌿 Thanks for subscribing — welcome to Morrow.';
                newsletterMsg.style.color = '#b4d4b8';
                newsletterMsg.style.display = 'block';
                newsletterEmail.value = '';
                setTimeout(() => {
                    newsletterMsg.style.display = 'none';
                }, 3500);
            });

            document.getElementById('cartBtn').addEventListener('click', () => {
                alert(`🛒 Your cart has ${cartCount} item${cartCount !== 1 ? 's' : ''}.`);
            });

            window.addEventListener('resize', () => {
                if (window.innerWidth > 768) {
                    mobileMenu.style.display = 'none';
                    mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
                }
            });
        }

        // ============================================================
        // INIT STORE (runs only after successful login)
        // ============================================================
        function initStore() {
            if (storeInitialised) return;
            storeInitialised = true;

            renderCategories();
            renderProducts(PRODUCTS);
            renderTestimonials();
            updateCartCount();
            setupDealTimer();
            bindStoreEvents();

            document.getElementById('year').textContent = new Date().getFullYear();
            console.log('🌿 Morrow — a calmer commerce experience loaded (green edition, authenticated).');
        }

        // focus username on load
        loginUser.focus();
    </script>

</body>
</html>
