ARG freetds_version=1.00.110
ARG ruby_version=3.1

FROM veracross/freetds:${freetds_version} as freetds
FROM cimg/ruby:${ruby_version}-browsers

COPY --from=freetds /usr/local /usr/local
