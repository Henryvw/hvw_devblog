Paperclip::Attachment.default_options[:storage] = :fog

Paperclip::Attachment.default_options.update({
  :fog_credentials => {
    aws_access_key_id: ENV["AWS_ACCESS_KEY"],
    aws_secret_access_key: ENV["AWS_SECRET_KEY"],
    provider: 'AWS',
    region: 'eu-west-1'
  },
  :fog_directory => ENV["AWS_S3_BUCKET"]
})
