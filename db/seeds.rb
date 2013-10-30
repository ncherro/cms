Cms::Layout.create([
  {
    name: 'Default',
  },
  {
    name: 'Homepage',
  },
])

Cms::Menu.create([
  {
    name: 'Main',
  },
  {
    name: 'Utility',
  },
  {
    name: 'Footer',
  },
])

Cms::MenuItem.create([
  {
    title: 'Home',
    css_id: 'home',
    menu: Cms::Menu.find_by(name: 'Main'),
    page_attributes: {
      title: 'Home',
      body: '<p>Hey</p>',
      layout: Cms::Layout.find_by(name: 'Homepage'),
    },
  },
])
