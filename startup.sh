#config local
export def_local_option_interface=eth0
export def_local_option_port=7547
export def_local_option_ubus_socket=/var/run/ubus.sock
export def_local_option_date_format=%FT%T%z
export def_local_option_username=admin
export def_local_option_password=admin
export def_local_option_provisioning_code=''
#Logging levels: Critic=0, Warning=1, Notice=2, Info=3, Debug=4
export def_local_option_logging_level='3'

#config acs
export def_acs_option_url=http://5.5.5.12/acs
export def_acs_option_username=easycwmp
export def_acs_option_password=easycwmp
export def_acs_option_parameter_key=''
export def_acs_option_periodic_enable='1'
export def_acs_option_periodic_interval='100'
export def_acs_option_periodic_time='0001-01-01T00:00:00Z'

#config device
export def_device_option_manufacturer=easycwmp
export def_device_option_oui=FFFFFF
export def_device_option_product_class=easycwmp
export def_device_option_serial_number=FFFFFF123456
export def_device_option_hardware_version=example_hw_version
export def_device_option_software_version=example_sw_version

echo "config local" > /etc/config/easycwmp
echo "        option interface ${local_option_interface-$def_local_option_interface}" >> /etc/config/easycwmp
echo "        option port ${local_option_port-$def_local_option_port}" >> /etc/config/easycwmp
echo "        option ubus_socket ${local_option_ubus_socket-$def_local_option_ubus_socket}" >> /etc/config/easycwmp
echo "        option date_format ${local_option_date_format-$def_local_option_date_format}" >> /etc/config/easycwmp
echo "        option username ${local_option_username-$def_local_option_username}" >> /etc/config/easycwmp
echo "        option password ${local_option_password-$def_local_option_password}" >> /etc/config/easycwmp
echo "        option provisioning_code '${local_option_provisioning_code-$def_local_option_provisioning_code}'" >> /etc/config/easycwmp
echo "        option logging_level '${local_logging_level-$def_local_logging_level}'" >> /etc/config/easycwmp

echo "config acs" >> /etc/config/easycwmp
echo "        option url ${acs_option_url-$def_acs_option_url}" >> /etc/config/easycwmp
echo "        option username ${acs_option_username-$def_acs_option_username}" >> /etc/config/easycwmp
echo "        option password ${acs_option_passsword-$def_acs_option_passsword}" >> /etc/config/easycwmp
echo "        option parameter_key '${acs_option_parameter_key-$def_acs_option_parameter_key}'" >> /etc/config/easycwmp
echo "        option periodic_enable '${acs_option_periodic_enable-$def_acs_option_periodic_enable}'" >> /etc/config/easycwmp
echo "        option periodic_interval '${acs_option_periodic_interval-$def_acs_option_periodic_interval}'" >> /etc/config/easycwmp
echo "        option periodic_time '${acs_option_periodic_time-$def_acs_option_periodic_time}'" >> /etc/config/easycwmp

echo "config device" >> /etc/config/easycwmp
echo "        option manufacturer ${device_option_manufacturer-$def_device_option_manufacturer}" >> /etc/config/easycwmp
echo "        option oui ${device_option_oui-$def_device_option_oui}" >> /etc/config/easycwmp
echo "        option product_class ${device_option_product_class-$def_device_option_product_class}" >> /etc/config/easycwmp
echo "        option serial_number ${device_option_serial_number-$def_device_option_serial_number}" >> /etc/config/easycwmp
echo "        option hardware_version ${device_option_hardware_version-$def_device_option_hardware_version}" >> /etc/config/easycwmp
echo "        option software_version ${device_option_software_version-$def_device_option_software_version}" >> /etc/config/easycwmp
/usr/sbin/ubusd -s /var/run/ubus.sock &
/usr/sbin/easycwmpd -f -b
