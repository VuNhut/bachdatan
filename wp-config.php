<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link https://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */

define('DB_NAME', 'bachdatan');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

//** Turn off Revisson */
define('WP_POST_REVISIONS', false );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '%[6W[cN9fC|!hm>fGa[eVBJ|ZD[Q )|FV/##I}+Fj;f<B]2M`N.{ 2#p+Gx[@H9m');
define('SECURE_AUTH_KEY',  '4V;1I+DG*IL(dh`|TZp>]7x=6f<050t+u:<-$x+0)q!{NK1u%>VmS5CxR-3Z@/[e');
define('LOGGED_IN_KEY',    '+-Ph*o=f>~3{P|Lekkf U71U:s8Mu&BE.s|UHt$8N-chGlITCI9a:yH)?P{x;+C=');
define('NONCE_KEY',        'vKFhPzPNTncI[;%n^$U@GE~m{qT;]v_gZH(+{p9cDSw]6 (o)&^8&(V`ZQ<y:|2(');
define('AUTH_SALT',        'p&__9f%WGzx_+(#M1}P#Cqs,XM-:N5P_qJ+ZL|:4|k<>/|4SIT;v- 0D`]bJ<BAf');
define('SECURE_AUTH_SALT', 'Fq1W^;;%:^u^zoR3{{#-QJ$5>/N,X2RTIgA,+N$_gm]1Ox<fC?o=#-/|[-5e)cDl');
define('LOGGED_IN_SALT',   'urp:K~pIww3@^5 *+b<a6&xvK<<|_;ojH{67X*f#BT&&u*jz|p|A,x~NUr:P<_zh');
define('NONCE_SALT',       'neDBTM~PinzhjvD4D^X8n|R%21dRkz}}/GmV/=lxpOS+ANV@jzZ}%J83]`?DUrjr');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
