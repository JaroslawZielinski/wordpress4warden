<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

define('DISALLOW_FILE_EDIT', true);
define('FORCE_SSL_ADMIN', true);

require_once __DIR__ . '/vendor/autoload.php';

$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->safeLoad();

$dbip = Dotenv\Dotenv::createImmutable(__DIR__, 'dbip.conf');
$dbip->safeLoad();

$DB_DATABASE = $_ENV['MYSQL_DATABASE'] ?? '';
$DB_USERNAME = $_ENV['MYSQL_USER'] ?? '';
$DB_PASSWORD = $_ENV['MYSQL_PASSWORD'] ?? '';
$DB_HOST = $_ENV['DB_HOST'] ?? '';
$DB_CHARSET = $_ENV['DB_CHARSET'] ?? '';
$DB_COLLATE = $_ENV['DB_COLLATE'] ?? '';

$WP_AUTH_KEY = $_ENV['WP_AUTH_KEY'] ?? '';
$WP_SECURE_AUTH_KEY = $_ENV['WP_SECURE_AUTH_KEY'] ?? '';
$WP_LOGGED_IN_KEY = $_ENV['WP_LOGGED_IN_KEY'] ?? '';
$WP_NONCE_KEY = $_ENV['WP_NONCE_KEY'] ?? '';
$WP_AUTH_SALT = $_ENV['WP_AUTH_SALT'] ?? '';
$WP_SECURE_AUTH_SALT = $_ENV['WP_SECURE_AUTH_SALT'] ?? '';
$WP_LOGGED_IN_SALT = $_ENV['WP_LOGGED_IN_SALT'] ?? '';
$WP_NONCE_SALT = $_ENV['WP_NONCE_SALT'] ?? '';
$WP_DEBUG = filter_var($_ENV['WP_DEBUG'], FILTER_VALIDATE_BOOLEAN, FILTER_NULL_ON_FAILURE);
$WP_DEBUG = null === $WP_DEBUG ? false : $WP_DEBUG;
$WP_TABLE_PREFIX = $_ENV['WP_TABLE_PREFIX'] ?? 'wp_';

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', $DB_DATABASE);

/** MySQL database username */
define('DB_USER', $DB_USERNAME);

/** MySQL database password */
define('DB_PASSWORD', $DB_PASSWORD);

/** MySQL hostname */
define('DB_HOST', $DB_HOST);

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', $DB_CHARSET);

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', $DB_COLLATE);

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY', $WP_AUTH_KEY);
define('SECURE_AUTH_KEY', $WP_SECURE_AUTH_KEY);
define('LOGGED_IN_KEY', $WP_LOGGED_IN_KEY);
define('NONCE_KEY', $WP_NONCE_KEY);
define('AUTH_SALT', $WP_AUTH_SALT);
define('SECURE_AUTH_SALT', $WP_SECURE_AUTH_SALT);
define('LOGGED_IN_SALT', $WP_LOGGED_IN_SALT);
define('NONCE_SALT', $WP_NONCE_SALT);

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = $WP_TABLE_PREFIX;

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ($WP_DEBUG) {
    define('WP_DEBUG', true);
} else {
    ini_set('display_errors', 'Off');
    ini_set('error_reporting', E_ALL);
    define('WP_DEBUG', false);
    define('WP_DEBUG_DISPLAY', false);
}

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if (!defined('ABSPATH')) {
    define('ABSPATH', __DIR__ . '/');
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
