echo
echo "Installing Kafka Development tools"

brew install kcat

# install kafkactl tap repostory
brew tap deviceinsight/packages
# install kafkactl
brew install deviceinsight/packages/kafkactl
