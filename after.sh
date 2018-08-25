# bin/bash

export CHANNEL_NAME=mychannel

peer channel create -o orderer0.daala.com:7050 -c $CHANNEL_NAME -f ./channel-artifacts/channel.tx --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/daala.com/orderers/orderer0.daala.com/msp/tlscacerts/tlsca.daala.com-cert.pem

peer channel join -b mychannel.block

sleep 2

CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/clientaud.daala.com/users/Admin@clientaud.daala.com/msp CORE_PEER_ADDRESS=peer1.clientaud.daala.com:7051 CORE_PEER_LOCALMSPID="ClientaudMSP" CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/clientaud.daala.com/peers/peer1.clientaud.daala.com/tls/ca.crt peer channel join -b mychannel.block



CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/daalaaud.daala.com/users/Admin@daalaaud.daala.com/msp CORE_PEER_ADDRESS=peer0.daalaaud.daala.com:7051 CORE_PEER_LOCALMSPID="DaalaaudMSP" CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/daalaaud.daala.com/peers/peer0.daalaaud.daala.com/tls/ca.crt peer channel join -b mychannel.block


CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/daalaaud.daala.com/users/Admin@daalaaud.daala.com/msp CORE_PEER_ADDRESS=peer1.daalaaud.daala.com:7051 CORE_PEER_LOCALMSPID="DaalaaudMSP" CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/daalaaud.daala.com/peers/peer1.daalaaud.daala.com/tls/ca.crt peer channel join -b mychannel.block



CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/clientinr.daala.com/users/Admin@clientinr.daala.com/msp CORE_PEER_ADDRESS=peer0.clientinr.daala.com:7051 CORE_PEER_LOCALMSPID="ClientinrMSP" CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/clientinr.daala.com/peers/peer0.clientinr.daala.com/tls/ca.crt peer channel join -b mychannel.block



CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/clientinr.daala.com/users/Admin@clientinr.daala.com/msp CORE_PEER_ADDRESS=peer1.clientinr.daala.com:7051 CORE_PEER_LOCALMSPID="ClientinrMSP" CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/clientinr.daala.com/peers/peer1.clientinr.daala.com/tls/ca.crt peer channel join -b mychannel.block


CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/daalainr.daala.com/users/Admin@daalainr.daala.com/msp CORE_PEER_ADDRESS=peer0.daalainr.daala.com:7051 CORE_PEER_LOCALMSPID="DaalainrMSP" CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/daalainr.daala.com/peers/peer0.daalainr.daala.com/tls/ca.crt peer channel join -b mychannel.block


CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/daalainr.daala.com/users/Admin@daalainr.daala.com/msp CORE_PEER_ADDRESS=peer1.daalainr.daala.com:7051 CORE_PEER_LOCALMSPID="DaalainrMSP" CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/daalainr.daala.com/peers/peer1.daalainr.daala.com/tls/ca.crt peer channel join -b mychannel.block


peer channel update -o orderer0.daala.com:7050 -c $CHANNEL_NAME -f ./channel-artifacts/ClientaudMSPanchors.tx --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/daala.com/orderers/orderer0.daala.com/msp/tlscacerts/tlsca.daala.com-cert.pem
sleep 2

CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/daalaaud.daala.com/users/Admin@daalaaud.daala.com/msp CORE_PEER_ADDRESS=peer0.daalaaud.daala.com:7051 CORE_PEER_LOCALMSPID="DaalaaudMSP" CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/daalaaud.daala.com/peers/peer0.daalaaud.daala.com/tls/ca.crt peer channel update -o orderer0.daala.com:7050 -c $CHANNEL_NAME -f ./channel-artifacts/DaalaaudMSPanchors.tx --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/daala.com/orderers/orderer0.daala.com/msp/tlscacerts/tlsca.daala.com-cert.pem
sleep 2
CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/clientinr.daala.com/users/Admin@clientinr.daala.com/msp CORE_PEER_ADDRESS=peer0.clientinr.daala.com:7051 CORE_PEER_LOCALMSPID="ClientinrMSP" CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/clientinr.daala.com/peers/peer0.clientinr.daala.com/tls/ca.crt peer channel update -o orderer0.daala.com:7050 -c $CHANNEL_NAME -f ./channel-artifacts/ClientinrMSPanchors.tx --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/daala.com/orderers/orderer0.daala.com/msp/tlscacerts/tlsca.daala.com-cert.pem
sleep 2


CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/daalainr.daala.com/users/Admin@daalainr.daala.com/msp CORE_PEER_ADDRESS=peer0.daalainr.daala.com:7051 CORE_PEER_LOCALMSPID="DaalainrMSP" CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/daalainr.daala.com/peers/peer0.daalainr.daala.com/tls/ca.crt peer channel update -o orderer0.daala.com:7050 -c $CHANNEL_NAME -f ./channel-artifacts/DaalainrMSPanchors.tx --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/daala.com/orderers/orderer0.daala.com/msp/tlscacerts/tlsca.daala.com-cert.pem
sleep 2

peer chaincode install -n daala -v 1.0 -p daala
sleep 2
CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/clientaud.daala.com/users/Admin@clientaud.daala.com/msp CORE_PEER_ADDRESS=peer1.clientaud.daala.com:7051 CORE_PEER_LOCALMSPID="ClientaudMSP" CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/clientaud.daala.com/peers/peer0.clientaud.daala.com/tls/ca.crt peer chaincode install -n daala -v 1.0 -p daala

sleep 2

CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/daalaaud.daala.com/users/Admin@daalaaud.daala.com/msp CORE_PEER_ADDRESS=peer0.daalaaud.daala.com:7051 CORE_PEER_LOCALMSPID="DaalaaudMSP" CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/daalaaud.daala.com/peers/peer0.daalaaud.daala.com/tls/ca.crt peer chaincode install -n daala -v 1.0 -p daala

sleep 2
CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/daalaaud.daala.com/users/Admin@daalaaud.daala.com/msp CORE_PEER_ADDRESS=peer1.daalaaud.daala.com:7051 CORE_PEER_LOCALMSPID="DaalaaudMSP" CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/daalaaud.daala.com/peers/peer1.daalaaud.daala.com/tls/ca.crt peer chaincode install -n daala -v 1.0 -p daala

sleep 2
CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/clientinr.daala.com/users/Admin@clientinr.daala.com/msp CORE_PEER_ADDRESS=peer0.clientinr.daala.com:7051 CORE_PEER_LOCALMSPID="ClientinrMSP" CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/clientinr.daala.com/peers/peer0.clientinr.daala.com/tls/ca.crt  peer chaincode install -n daala -v 1.0 -p daala

sleep 2

CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/clientinr.daala.com/users/Admin@clientinr.daala.com/msp CORE_PEER_ADDRESS=peer1.clientinr.daala.com:7051 CORE_PEER_LOCALMSPID="ClientinrMSP" CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/clientinr.daala.com/peers/peer1.clientinr.daala.com/tls/ca.crt  peer chaincode install -n daala -v 1.0 -p daala

sleep 2

CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/daalainr.daala.com/users/Admin@daalainr.daala.com/msp CORE_PEER_ADDRESS=peer0.daalainr.daala.com:7051 CORE_PEER_LOCALMSPID="DaalainrMSP" CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/daalainr.daala.com/peers/peer0.daalainr.daala.com/tls/ca.crt  peer chaincode install -n daala -v 1.0 -p daala
sleep 2

CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/daalainr.daala.com/users/Admin@daalainr.daala.com/msp CORE_PEER_ADDRESS=peer1.daalainr.daala.com:7051 CORE_PEER_LOCALMSPID="DaalainrMSP" CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/daalainr.daala.com/peers/peer1.daalainr.daala.com/tls/ca.crt  peer chaincode install -n daala -v 1.0 -p daala
sleep 2
peer chaincode instantiate -o orderer0.daala.com:7050 --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/daala.com/orderers/orderer0.daala.com/msp/tlscacerts/tlsca.daala.com-cert.pem -C $CHANNEL_NAME -n daala -v 1.0 -c '{"Args":["init"]}' -P "OR ('ClientaudMSP.peer','DaalaaudMSP.peer','ClientinrMSP.peer','DaalainrMSP.peer')"