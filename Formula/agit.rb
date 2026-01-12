# frozen_string_literal: true

# Homebrew formula for AGIT
#
# Usage:
#   brew tap agit-stuff/agit
#   brew install agit

class Agit < Formula
  desc "AI-native Git wrapper for capturing context alongside code"
  homepage "https://github.com/agit-stuff/agit"
  version "1.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/agit-stuff/agit/releases/download/v#{version}/agit-macos-x86_64.tar.gz"
      sha256 "871054881dc6afeaa309926488066c5d77056ee93cc261a82acd96c8bed293ad"
    end

    on_arm do
      url "https://github.com/agit-stuff/agit/releases/download/v#{version}/agit-macos-aarch64.tar.gz"
      sha256 "425ad33dcfcc0a83e07b89bd860706dbad61977fd8a3f99023cb287d041b578f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/agit-stuff/agit/releases/download/v#{version}/agit-linux-x86_64.tar.gz"
      sha256 ""
    end

    on_arm do
      url "https://github.com/agit-stuff/agit/releases/download/v#{version}/agit-linux-aarch64.tar.gz"
      sha256 "18a21f6c88580a1b0d7585cb09d24804047a3187f190960fe76123b34c60071a"
    end
  end

  def install
    bin.install "agit"
  end

  test do
    assert_match "agit #{version}", shell_output("#{bin}/agit --version")
  end
end
