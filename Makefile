TARGETS=websockify
CFLAGS += -fPIC

all: $(TARGETS)

websockify: websockify.o websocket.o md5.o sha1.o
	$(CC) $(LDFLAGS) $^ -lresolv -o $@

websocket.o: websocket.c websocket.h
websockify.o: websockify.c websocket.h
md5.o: md5.c md5.h
sha1.o: sha1.c sha1.h
clean:
	rm -f websockify *.o

