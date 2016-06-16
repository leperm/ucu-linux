<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wp');

/** MySQL database username */
define('DB_USER', 'usuariowp');

/** MySQL database password */
define('DB_PASSWORD', 'pass');

/** MySQL hostname */
define('DB_HOST', '10.0.0.222');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '=}Iei*0vCIFg1sYJJ_I:Xhvn^+#Hq(ka;!~-C T>Gz.7fWs=%$]Gd3?[$Y&17|(,');
define('SECURE_AUTH_KEY',  '7G2&AV>~$t :[4=Le39%sN8ET+%1* D,L$QccnJ-P/`4A.+>F*2Vx~mv>[Q,CjOo');
define('LOGGED_IN_KEY',    'i5`gXA&Cnu$.zisL[3z9=d 3*xD{dngHB;U;ilw%_$4Pt,#A>.B};IJt`1Q5Fl_X');
define('NONCE_KEY',        'jLOW({!-KQu0)-5#e0ALp^,h:Dj!3N/3_=8!Diot)lmx.h:nS[B-Bm=]UVr&L.tM');
define('AUTH_SALT',        'kB1=O|@%p[+*,*vzjhVv!D?RU`UAl*kYeh~d?u$>bBs1}/M)oZO[!w|9<LARrTi_');
define('SECURE_AUTH_SALT', 'ZrQ-?/6Dlp+2B11YUb<p,N-o$Kk&r,>__zLdFvW:8|~//G;2^C7~z#l@aouz;^)^');
define('LOGGED_IN_SALT',   'u8?YuLwVhaEf2Oi!dy8vI-o-E8>;|6`?v}BX$xeJDVn-qz(jpXb?D<[K+]ch?=AN');
define('NONCE_SALT',       'zntMwcA]B,/#Ta=5V!x!hIaOAW^+F]62+Dgh~p:m%%;9N>!(Qq;>^6*Kf:Zy{Eu,');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
