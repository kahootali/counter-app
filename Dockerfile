FROM bash:5.0
COPY ./script.sh .
RUN mkdir app/
RUN chmod +x ./script.sh
CMD ["bash", "./script.sh"]
