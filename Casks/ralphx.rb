cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0"
  sha256 arm:   "7b5fcffe4bd179ff9f41d3d0e5fd371345c355af5191489b57cba1ffb649fe59",
         intel: "59920dcaa21f4ef35be7835ee1dd7b711071112eb864ac0d4abcc0ac580e58cd"

  url "https://github.com/aigentive/ralphx-releases/releases/download/v#{version}/RalphX_#{version}_#{arch}.dmg"
  name "RalphX"
  desc "Native Mac GUI for autonomous AI development"
  homepage "https://github.com/aigentive/ralphx-releases"
  auto_updates true

  depends_on formula: "node"
  depends_on macos: ">= :ventura"

  app "RalphX.app"

  caveats do
    <<~EOS
      Install at least one supported AI harness CLI after install.
      RalphX can update itself in-app after install.
      To force a Homebrew-managed refresh, run: brew upgrade --cask ralphx
    EOS
  end
end
