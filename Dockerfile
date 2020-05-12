FROM thyrlian/android-sdk:4.0

ADD https://cdn.xyzz.work/assets/conversations/libwebrtc-m81.aar /

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["master"]
