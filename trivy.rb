# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Trivy < Formula
  desc "Scanner for vulnerabilities in container images, file systems, and Git repositories, as well as for configuration issues"
  homepage "https://github.com/aquasecurity/trivy"
  version "0.21.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aquasecurity/trivy/releases/download/v0.21.2/trivy_0.21.2_macOS-64bit.tar.gz"
      sha256 "ad28215930534124b8f2deabe480fd4df649da0a10142a3b77989fdd36d9e698"

      def install
        bin.install "trivy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aquasecurity/trivy/releases/download/v0.21.2/trivy_0.21.2_macOS-ARM64.tar.gz"
      sha256 "3676af4d0cba3f541899d99c8359682df1d0e2c57c16f93a15da95801302f476"

      def install
        bin.install "trivy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aquasecurity/trivy/releases/download/v0.21.2/trivy_0.21.2_Linux-ARM64.tar.gz"
      sha256 "9a186a11cc6803af2758d8195b42010af6495773c355c14caf77101d34a99c1b"

      def install
        bin.install "trivy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aquasecurity/trivy/releases/download/v0.21.2/trivy_0.21.2_Linux-64bit.tar.gz"
      sha256 "563d937db4febeafe6a318ee242eb7da940ff858650eec3864365b4745caab58"

      def install
        bin.install "trivy"
      end
    end
  end

  test do
    system "#{bin}/trivy", "--version"
  end
end
