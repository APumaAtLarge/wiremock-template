DEFAULT="./wiremock"

CONTAINER_NAME="wiremock"

# 检查参数
if [ -z "$1" ]; then
  echo "错误：请提供挂载目录路径作为参数"
  echo "用法：$0 <wiremock目录路径>"
  exit 1
fi

TARGET="$1"

# 判断容器是否在运行，若在运行则停止
if docker ps --format '{{.Names}}' | grep -q "^${CONTAINER_NAME}$"; then
  echo "容器 ${CONTAINER_NAME} 正在运行，正在停止..."
  docker compose down
  echo "容器已停止"
else
  echo "容器未在运行，跳过停止步骤"
fi

# 转义 DEFAULT 中的正则特殊字符（. 等）
ESCAPED_DEFAULT=$(echo "$DEFAULT" | sed 's/[.[\*^$]/\\&/g')
# 替换路径并生成 docker-compose.yaml
sed "s|$ESCAPED_DEFAULT|$TARGET|g" docker-compose.yaml.example >docker-compose.yaml
echo "已生成 docker-compose.yaml（挂载目录：$TARGET）"

# 启动容器
echo "正在启动容器..."
docker compose up -d
echo "容器已启动"
