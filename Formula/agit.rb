# frozen_string_literal: true

# Homebrew formula for AGIT
#
# Usage:
#   brew tap agit-stuff/agit
#   brew install agit

class Agit < Formula
  desc "AI-native Git wrapper for capturing context alongside code"
  homepage "https://github.com/agit-stuff/agit"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/agit-stuff/agit/releases/download/v#{version}/agit-macos-x86_64.tar.gz"
      sha256 "9a42b2d2f69e40b6507b1c4e86b25a3aabef2dffcadc457ff24ef8aa88a8baf0"
    end

    on_arm do
      url "https://github.com/agit-stuff/agit/releases/download/v#{version}/agit-macos-aarch64.tar.gz"
      sha256 "9546fa134cc68c6ab55ed3ca839c0a7a413732c7bc30e49a3ce9150f8c6ec22c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/agit-stuff/agit/releases/download/v#{version}/agit-linux-x86_64.tar.gz"
      sha256 ""
    end

    on_arm do
      url "https://github.com/agit-stuff/agit/releases/download/v#{version}/agit-linux-aarch64.tar.gz"
      sha256 "66897c8b7b5bd62c76226cb22e04ca08ce2044d284a0b8a950a7334bb92609bc"
    end
  end

  def install
    bin.install "agit"
  end

  test do
    assert_match "agit #{version}", shell_output("#{bin}/agit --version")
  end
end
