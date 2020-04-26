FROM solr:6.6

RUN mkdir /opt/solr/server/solr/owlya && chown -R solr:solr /opt/solr/server/solr/owlya

COPY --chown=solr:solr ./owlya /opt/solr/server/solr/owlya
#COPY --chown=solr:solr ./create-a12core.sh /docker-entrypoint-initdb.d/

RUN chmod -R a+X /opt/solr/server/solr/owlya