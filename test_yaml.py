import yaml
from datetime import datetime, timedelta

with open('games.yaml') as f:
    games = yaml.safe_load(f)

with open('toys.yaml') as f:
    toys = yaml.safe_load(f)

to_yaml_games = {'games': games}
to_yaml_toys = {'toys': toys}

with open('../../test_sql_yaml/a.yaml', 'w') as f:
    for value in to_yaml_games.values():
        if (datetime.today() - timedelta(days=7)) < value[toys[1]['date']] < datetime.today():
            yaml.dump(to_yaml_games, f, default_flow_style=False)

with open('../../test_sql_yaml/b.yaml', 'w') as f:
    for value in to_yaml_toys.values():
        if (datetime.today() - timedelta(days=7)) < value[toys[1]['date']] < datetime.today():
            yaml.dump(to_yaml_toys, f, default_flow_style=False)


with open('../../test_sql_yaml/c.yaml', 'w') as f:
    for value in to_yaml_toys.values():
        if value[1]['games']['note']:
            yaml.dump(to_yaml_toys, f, default_flow_style=False)