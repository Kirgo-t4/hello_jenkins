FROM alpine

RUN echo "hello!" > /root/test.txt

CMD /bin/bash
