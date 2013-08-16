# Title: MMD Meta
# Author: Jamie Osborne https://github.com/jmeosbn/mmd_meta
# Description: Support MultiMarkdown formatted metadata in Jekyll
#
# Usage:
# Use MultiMarkdown style metadata in place of YAML frontmatter:
# https://github.com/fletcher/MultiMarkdown/wiki/MultiMarkdown-Syntax-Guide
#
# Notes:
# Performs basic conversion of MMD keys, i.e. 'Author' -> 'author'
#
module Jekyll
  module Convertible

    # retain reference to original method
    alias_method :_mmdmeta_read_yaml, :read_yaml

    #
    # Read the MultiMarkdown metadata
    #
    def read_yaml(base, name)

      begin
        self.content = File.read(File.join(base, name))

        # check for match on MMD metadata
        if self.content =~ /\A([\w-]+:\s*.*?\n)^($\n?)/m
          self.content = $POSTMATCH

          # convert MMD keys to match Jekyll
          yaml = $1.gsub(/^[\w-]+:/) {|s| s.downcase}

          # pass MMD metadata though as YAML
          self.data = YAML.load(yaml)
        else
          # pass YAML through to original method if no match
          _mmdmeta_read_yaml(base, name)
          return
        end

      rescue SyntaxError => e
        puts "YAML Exception reading #{File.join(base, name)}: #{e.message}"
      rescue Exception => e
        puts "Error reading file #{File.join(base, name)}: #{e.message}"
      end

      self.data ||= {}
    end

  end
end
