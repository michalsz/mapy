# -*- coding: utf-8 -*-
require File.dirname(__FILE__) + "/../ccnfig/database.conf"
DataMapper::Logger.new(STDOUT, :debug)

class Company
  include DataMapper::Resource

  property :id,          Serial
  property :name,        String 

end
