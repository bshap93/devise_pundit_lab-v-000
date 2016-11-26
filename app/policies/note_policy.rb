class NotePolicy < ApplicationPolicy
   attr_reader :note

   def initialize(user, note)
     super(user,note)
     @post = record
   end

   def index?
     true
   end

   
 end
