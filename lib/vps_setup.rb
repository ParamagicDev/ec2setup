# frozen_string_literal: true

require 'vps_setup/copy'
require 'vps_setup/pull'
# Used for setting up a linux + cygwin environment for ssh purposes
module VpsSetup
  # top level constants
  ROOT = File.expand_path(File.expand_path('../', __dir__))
  CONFIG_DIR = File.join(ROOT, 'config')

  NON_DOTFILES = %w[gnome_terminal_settings sshd_config].freeze
  NON_CYGWIN_DOTFILES = %w[zshrc].concat(NON_DOTFILES)
  NON_LINUX_DOTFILES = %w[cygwin_zshrc minttyrc].concat(NON_DOTFILES)

  def tilde_to_home(string)
    string.sub(/~/, Dir.home)
  end
end
