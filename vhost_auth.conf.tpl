<VirtualHost _default_>

    DocumentRoot /opt/xhprof/xhprof_html
    php_admin_value auto_prepend_file '/opt/xhprof/external/header.php'

    <Directory "/opt/xhprof/xhprof_html">
	AuthName Restricted
	AuthType Basic
	AuthUserFile /etc/apache2/htpasswd
	Require valid-user
    </Directory>

</VirtualHost>
