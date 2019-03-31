module VpsCli
  class FileConstants
    # @!group Top Level Constants

    # Project's Root Directory
    ROOT = File.expand_path(File.expand_path('../', __dir__))

    # Projects config_files directory
    FILES_DIR = File.join(ROOT, 'config_files')

    # Projects Dotfiles directory
    DOTFILES_DIR = File.join(FILES_DIR, 'dotfiles')

    # Miscellaneous files like sshd_config
    MISC_FILES_DIR = File.join(FILES_DIR, 'misc_files')

    # Directory of backup files
    BACKUP_FILES_DIR = File.join(Dir.home, 'backup_files')

    # @!endgroup
  end

  class DecryptionConstants
    # @param keys [Array<Symbol>]
    # @return [Hash<Symbol, String>] returns a hash easily decrypted
    #   by FileHelper#decrypt
    # @see VpsCli::FileHelper#decrypt
    def self.create_hash(keys)
      hash = Hash.new do |hash, key|
        hash[key] = "[#{hash}][#{key}]"
      end

      keys.each do |key|
        hash[key]
      end
    end
    HEROKU_KEYS = %i[
    api api_login api_password
    git git_login git_password
    ]

    GITHUB_KEYS = %i[username email password api_token]

    HEROKU_HASH = create_hash(HEROKU_KEYS)
    GITHUB_HASH = create_hash(GITHUB_KEYS)
  end
end
