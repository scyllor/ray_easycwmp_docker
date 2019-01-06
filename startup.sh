echo "config local" > /etc/config/easycwmp
echo "       option interface $local_option_interface" >> /etc/config/easycwmp
echo "        option port $local_option_port" >> /etc/config/easycwmp
echo "        option ubus_socket $local_option_ubus_socket" >> /etc/config/easycwmp
echo "        option date_format $local_option_date_format" >> /etc/config/easycwmp
echo "        option username $local_option_username" >> /etc/config/easycwmp
echo "        option password $local_option_password" >> /etc/config/easycwmp
echo "        option provisioning_code '$local_option_provisioning_code'" >> /etc/config/easycwmp
echo "        option logging_level '$local_logging_level'" >> /etc/config/easycwmp
echo "config acs" >> /etc/config/easycwmp
echo "        option url $acs_option_url" >> /etc/config/easycwmp
echo "        option username $acs_option_username" >> /etc/config/easycwmp
echo "        option password $acs_option_passsword" >> /etc/config/easycwmp
echo "        option parameter_key '$acs_option_parameter_key'" >> /etc/config/easycwmp
echo "        option periodic_enable '$acs_option_periodic_enable'" >> /etc/config/easycwmp
echo "        option periodic_interval '$acs_option_periodic_interval'" >> /etc/config/easycwmp
echo "        option periodic_time '$acs_option_periodic_time'" >> /etc/config/easycwmp
echo "config device" >> /etc/config/easycwmp
echo "        option manufacturer $device_option_manufacturer" >> /etc/config/easycwmp
echo "        option oui $device_option_oui" >> /etc/config/easycwmp
echo "        option product_class $device_option_product_class" >> /etc/config/easycwmp
echo "        option serial_number $device_option_serial_number" >> /etc/config/easycwmp
echo "        option hardware_version $device_option_hardware_version" >> /etc/config/easycwmp
echo "        option software_version $device_option_software_version" >> /etc/config/easycwmp
/usr/sbin/ubusd -s /var/run/ubus.sock &
/usr/sbin/easycwmpd -f -b
