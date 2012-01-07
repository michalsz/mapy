# -*- coding: utf-8 -*-
require 'datamapper'
require 'dm-mysql-adapter'

DataMapper.setup(:default, {
                   :adapter => "mysql",
                   :host => "sql.arenatypera.megiteam.pl",
                   :port => 3307,
                   :user => "my_4422a",
                   :password => "kow0407",
                   :database => "my_4422"})

DataMapper::Logger.new(STDOUT, :debug)

class Location
  include DataMapper::Resource

  property :id,          Serial
  property :name,        String 
  property :country,        String 
  property :description, String 
  property :latitude,    Float
  property :longitude,  Float

  def image_dir
    name.downcase.gsub(/ż/, 'z').gsub(/\s/, '-')
  end

  def images
    Dir.entries(File.dirname(__FILE__) + "/../public/images/gallery/" + self.image_dir).select {|file_name| file_name =~ /\.jpg/ }
  end
end
