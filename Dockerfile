FROM ruby:latest

ADD ./SGE_BATCH.rb /bin 
ADD ./build_average_model.rb /bin
ADD ./build_average_model_dd.rb /bin
ADD ./build_average_model_ldd.rb /bin


