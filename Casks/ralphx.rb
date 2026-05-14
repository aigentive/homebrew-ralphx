cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.14.1"
  sha256 arm:   "a82ab342803f8b8cc8b93763c62bcdbed69addc74560e6fb7d2b232e10f44443",
         intel: "279beb0f6f0e66cec7c8387cb25b666033652962f094aa4e5cb1b20b6f5d42a1"

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
