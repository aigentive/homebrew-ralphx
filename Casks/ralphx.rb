cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.68.0"
  sha256 arm:   "92981e4c5579502b8439964f069ca6c2387045d5ef65a4228a06129b1535ef2f",
         intel: "6e2b4a47427864ecbfd71659a9c6bdb640950ca35beda950903b1d2a92d89c0c"

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
