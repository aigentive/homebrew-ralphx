cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.29.0"
  sha256 arm:   "0bce8e9c27a8830fa75a61d73def946914174fb4a65125582c1d21f047cd6b3d",
         intel: "3b310fa988517c1e2ab30f5e7db5cc3478909bc051b26089b90a21a6ccbeee04"

  url "https://github.com/aigentive/ralphx.app/releases/download/v#{version}/RalphX_#{version}_#{arch}.dmg"
  name "RalphX"
  desc "Native Mac GUI for autonomous AI development"
  homepage "https://github.com/aigentive/ralphx.app"
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
