

client : 
	g++ -o client client.cpp

server : 
	g++ -o server server.cpp

all : client server

clean : 
	rm -f client server

fresh : 
	make clean 
	make all

# sender.c <SenderPort> <ReceiverPort> <RetransmissionTimer(s)> <NoOfPacketsToBeSent>
sendr :
	./client 8080 8082 2 10

# receiver.c <ReceiverPort> <SenderPort> <PacketDropProbability>
recvr :
	./server 8082 8080 0.1
# ./server 8080 8080 0.1