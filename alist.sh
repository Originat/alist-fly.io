
# 创建配置文件目录
mkdir -p /opt/alist/data/

cat >/opt/alist/data/config.json <<EOF
{
  "address": "0.0.0.0",
  "port": 5244,
  "assets": "local",
  "database": {
    "type": "sqlite3",
    "table_prefix": "x_",
    "db_file": "data/data.db"
  },
  "scheme": {
    "https": false,
    "cert_file": "",
    "key_file": ""
  },
  "cache": {
    "expiration": 60,
    "cleanup_interval": 120
  }
}
EOF

cd /opt/alist
./alist -conf data/config.json