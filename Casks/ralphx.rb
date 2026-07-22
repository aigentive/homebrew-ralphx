cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.75.0"
  sha256 arm:   "402052e28233ada4db78477d4c2ee931b1f0b5fe2c3c08ed1fa578b0664f6c0d",
         intel: "c39713cb7e2e0ecf0475c13d70d643a0e129cea7f8e2847b088e73dea6c723c0"

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
