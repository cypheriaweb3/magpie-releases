cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.227"
  sha256 arm:   "9f566923fa7ec1aadaafbbd6e2cd003096284347b75c4741e77fb5cef4bf3e8a",
         intel: "eede48c61bccb76e387c579757187fba2239afe4d912a808a48cdef58b090e89"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
