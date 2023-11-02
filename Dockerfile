FROM ubuntu 

RUN mkdir /root/dir
RUN mkdir /root/data

RUN echo "this is a file inside container" > /root/dir/file_in_container
RUN echo "this is a data file inside container" > /root/data/data_file_in_container

COPY ["./", "/root/dir"]

RUN ls -al /root/dir/ > /root/ls_result_during_build

ENTRYPOINT ["tail", "-f", "/dev/null"]
