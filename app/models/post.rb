class Post < ApplicationRecord
  default_scope { visible }

  scope :visible, ->{ where(deleted_at: nil) }
  scope :with_deleted, ->{ unscope(where: :deleted_at) }
  scope :deleted, ->{ with_deleted.where.not(deleted_at: nil) }
end
