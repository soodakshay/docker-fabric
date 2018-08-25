# bin/bash
cryptogen generate --config=./cryptogen.yaml
export FABRIC_CFG_PATH=$PWD
configtxgen -profile DalaaOrdereGenesis -outputBlock ./channel-artifacts/genesis.block
export CHANNEL_NAME=mychannel
configtxgen -profile DaalaOrgsChannel -outputCreateChannelTx ./channel-artifacts/channel.tx -channelID $CHANNEL_NAME


configtxgen -profile DaalaOrgsChannel -outputAnchorPeersUpdate ./channel-artifacts/ClientaudMSPanchors.tx -channelID $CHANNEL_NAME -asOrg ClientaudMSP


configtxgen -profile DaalaOrgsChannel -outputAnchorPeersUpdate ./channel-artifacts/DaalaaudMSPanchors.tx -channelID $CHANNEL_NAME -asOrg DaalaaudMSP

configtxgen -profile DaalaOrgsChannel -outputAnchorPeersUpdate ./channel-artifacts/ClientinrMSPanchors.tx -channelID $CHANNEL_NAME -asOrg ClientinrMSP

configtxgen -profile DaalaOrgsChannel -outputAnchorPeersUpdate ./channel-artifacts/DaalainrMSPanchors.tx -channelID $CHANNEL_NAME -asOrg DaalainrMSP