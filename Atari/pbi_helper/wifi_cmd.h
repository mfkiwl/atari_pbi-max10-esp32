#ifndef _WIFI_CMD_H
#define _WIFI_CMD_H

typedef signed char int8_t;
typedef unsigned char uint8_t;
typedef unsigned int uint16_t;

typedef struct wifi_cmd_config {
    uint8_t ssid[32];
    uint8_t password[64];
} wifi_cmd_config_t;

typedef struct wifi_cmd {
    uint8_t cmd;

    union {
        wifi_cmd_config_t config;
    } p;
    
} wifi_cmd_t;



#define WIFI_AUTH_OPEN 0
#define WIFI_AUTH_WEP 1
#define WIFI_AUTH_WPA_PSK 2
#define WIFI_AUTH_WPA2_PSK 3
#define WIFI_AUTH_WPA_WPA2_PSK 4
#define WIFI_AUTH_WPA2_ENTERPRISE 5

typedef struct wifi_resp_ap_record {
    uint8_t ssid[33];
    int8_t rssi;
    uint8_t channel;
    uint8_t authmode;
} wifi_resp_ap_record_t;


typedef struct wifi_resp {
    uint16_t resp;
} wifi_resp_t;




#define WIFI_CMD_STOP	 	0
#define WIFI_CMD_INIT		1
#define WIFI_CMD_CONFIG		2
#define WIFI_CMD_SCAN_START	3
#define WIFI_CMD_SCAN_STOP	4


#define WIFI_RESP_INIT		0
#define WIFI_RESP_START		1
#define WIFI_RESP_GOT_IP	2
#define WIFI_RESP_DISCONNECT	3
#define WIFI_RESP_STOP		4
#define WIFI_RESP_SCAN_DONE	5

#endif
