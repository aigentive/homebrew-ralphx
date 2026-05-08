cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.8.4"
  sha256 arm:   "b70819fd6bce4ab9622f481deb8f82e4a5e01ec5e1e5dbfba1ac97370bcab491",
         intel: "71d2b735f4dcb6f876800e7697bbe14ff163df4d463c40264642b1d70bfff77d"

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
