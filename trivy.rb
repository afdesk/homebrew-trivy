# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Trivy < Formula
  desc "Scanner for vulnerabilities in container images, file systems, and Git repositories, as well as for configuration issues"
  homepage "https://github.com/aquasecurity/trivy"
  version "0.32.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aquasecurity/trivy/releases/download/v0.32.0/trivy_0.32.0_macOS-64bit.tar.gz"
      sha256 "1cc8b2301f696b71c488d99c917a21a191ab26e1c093287c20112e8bb517ac4c"

      def install
        bin.install "trivy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aquasecurity/trivy/releases/download/v0.32.0/trivy_0.32.0_macOS-ARM64.tar.gz"
      sha256 "41a3d4c12cd227cf95db6b30144b85e571541f587837f2f3814e2339dd81a21a"

      def install
        bin.install "trivy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aquasecurity/trivy/releases/download/v0.32.0/trivy_0.32.0_Linux-64bit.tar.gz"
      sha256 "e6e1c4767881ab1e40da5f3bb499b1c9176892021c7cb209405078fc096d94d8"

      def install
        bin.install "trivy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aquasecurity/trivy/releases/download/v0.32.0/trivy_0.32.0_Linux-ARM64.tar.gz"
      sha256 "fd6e4b8f9ce7ad138b8fd46c7db308d1343f27ee8029766c939c5f66c5bef048"

      def install
        bin.install "trivy"
      end
    end
  end

  test do
    system "#{bin}/trivy", "--version"
  end
end
