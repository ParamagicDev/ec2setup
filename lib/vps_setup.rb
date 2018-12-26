# frozen_string_literal: true

# Used for setting up a linux + cygwin environment for ssh purposes
module VPS_Setup; end

require 'vps_setup/copy'
require 'vps_setup/pull'

# top level constants
ROOT = File.expand_path(File.expand_path('../', __dir__))
CONFIG_DIR = File.join(ROOT, 'config')

NON_DOTFILES = %w[gnome_terminal_settings sshd_config].freeze
NON_CYGWIN_DOTFILES = %w[zshrc].concat(NON_DOTFILES)
NON_LINUX_DOTFILES = %w[cygwin_zshrc minttyrc].concat(NON_DOTFILES)
