import React, { Component } from 'react';
import { Button, Col, Container, Row, Card, CardHeader, CardBody, Table } from 'reactstrap';
import axios from 'axios';

import TableJoueurs from './../../components/Tables/TableJoueurs'
import { getJoueursFilter, getJoueursFavoris, updateJoueursFavoris } from './../../functions/Joueur';
import Login from '../Login/Login';

const NO_PLAYER = "Aucun joueur selectionné";
class CreationEquipe extends Component {

  constructor(props) {
    super(props);
    this.state = {
      recherche: "",
      isUpdating: false,
      message: "",
      selectedPlayer: {},
      attaquant: {},
      milieu: {},
      defenseur: {},
      gardien: {}
    };
    this.handleChange = this.handleChange.bind(this);
    this.update = this.update.bind(this);
    this.getFavoris = this.getFavoris.bind(this);

    if (localStorage.getItem('user')) {
      this.update();
    }
  }

  handleChange(event) {
    this.setState({ recherche: event.target.value });
  }

  update() {
    this.getFavoris();
    getJoueursFilter(this.state.recherche)
      .then((res) => {
        this.tableJoueurs.populateTable(res.data === "" ? [] : res.data);
      }
      );
  }

  getFavoris() {
    const userId = JSON.parse(localStorage.getItem('user')).uti_id;
    getJoueursFavoris(userId)
      .then((res) => {
        this.setState({
          attaquant: res.data.attaquant,
          milieu: res.data.milieu,
          defenseur: res.data.defenseur,
          gardien: res.data.gardien,
        });
      });
  }

  render() {
    if (localStorage.getItem('user')) {
      return this.showCreationEquipe();
    } else {
      return <Login onLogin={ () => {window.location.reload();} } />;
    }
  }

  showCreationEquipe() {
    return (
      <Container>
        <Row>
          <Col lg="6" xs="12">
            <Card>
              <CardHeader>
                <i className="fa fa-align-justify"></i> Recherche </CardHeader>
              <CardBody>
                <Row>
                  <Col lg="4">
                    <input type="text" onChange={this.handleChange} onKeyPress={(e) => { if (e.key === "Enter") this.update() }} />
                  </Col>
                  <Col lg="3">
                    <Button onClick={() => { this.update(); }}>Rechercher</Button>
                  </Col>
                </Row>
                <Row>
                  <Col lg="4">
                    Joueur selectionné :
                  </Col>
                  <Col lg="7">
                    {this.state.selectedPlayer.nom ?
                      this.state.selectedPlayer.nom :
                      NO_PLAYER}
                  </Col>
                </Row>
                <Row>
                  <Col lg="3">
                    <Button onClick={() => {
                      this.setState({ isUpdating: true });
                      const userId = JSON.parse(localStorage.getItem('user')).uti_id;
                      updateJoueursFavoris(userId,
                        this.state.attaquant.id,
                        this.state.milieu.id,
                        this.state.defenseur.id,
                        this.state.gardien.id)
                        .then(() => {
                          this.setState({ message: "Joueurs mis à jour!", isUpdating: false });
                        });
                    }}>Sauvegarder</Button>
                  </Col>
                  <Col lg="1"></Col>
                  <Col lg="3">
                    <Button onClick={() => {
                      this.setState({
                        recherche: "",
                        message: "",
                        isUpdating: false,
                        selectedPlayer: {},
                        attaquant: {},
                        milieu: {},
                        defenseur: {},
                        gardien: {},
                      });
                    }}>Tout réinitialiser</Button>
                  </Col>
                </Row>
                <Row>
                  <Col lg="12">
                    {this.state.isUpdating
                      ? "En train d'effectuer les modifications ... "
                      : this.state.message}
                  </Col>
                </Row>
              </CardBody>
            </Card>
          </Col>
          <Col lg="6" xs="12">
            <Card>
              <CardHeader>
                <i className="fa fa-align-justify"></i> Equipe </CardHeader>
              <CardBody>
                <Row>
                  <Col lg="3">
                    Attaquant :
                  </Col>
                  <Col lg="5">
                    {this.state.attaquant.nom ? this.state.attaquant.nom : NO_PLAYER}
                  </Col>
                  <Col lg="2">
                    <Button onClick={() => {
                      this.setState({ attaquant: this.state.selectedPlayer });
                    }}>Choisir</Button>
                  </Col>
                  <Col lg="2">
                    <Button onClick={() => {
                      this.setState({ attaquant: {} });
                    }}>Effacer</Button>
                  </Col>
                </Row>
                <Row>
                  <Col lg="3">
                    Milieu :
                  </Col>
                  <Col lg="5">
                    {this.state.milieu.nom ? this.state.milieu.nom : NO_PLAYER}
                  </Col>
                  <Col lg="2">
                    <Button onClick={() => {
                      this.setState({ milieu: this.state.selectedPlayer });
                    }}>Choisir</Button>
                  </Col>
                  <Col lg="2">
                    <Button onClick={() => {
                      this.setState({ milieu: {} });
                    }}>Effacer</Button>
                  </Col>
                </Row>
                <Row>
                  <Col lg="3">
                    Défenseur :
                  </Col>
                  <Col lg="5">
                    {this.state.defenseur.nom ? this.state.defenseur.nom : NO_PLAYER}
                  </Col>
                  <Col lg="2">
                    <Button onClick={() => {
                      this.setState({ defenseur: this.state.selectedPlayer });
                    }}>Choisir</Button>
                  </Col>
                  <Col lg="2">
                    <Button onClick={() => {
                      this.setState({ defenseur: {} });
                    }}>Effacer</Button>
                  </Col>
                </Row>
                <Row>
                  <Col lg="3">
                    Gardien :
                </Col>
                  <Col lg="5">
                    {this.state.gardien.nom ? this.state.gardien.nom : NO_PLAYER}
                  </Col>
                  <Col lg="2">
                    <Button onClick={() => {
                      this.setState({ gardien: this.state.selectedPlayer });
                    }}>Choisir</Button>
                  </Col>
                  <Col lg="2">
                    <Button onClick={() => {
                      this.setState({ gardien: {} });
                    }}>Effacer</Button>
                  </Col>
                </Row>
              </CardBody>
            </Card>
          </Col>
        </Row>
        <TableJoueurs onRef={ref => (this.tableJoueurs = ref)} onClick={(selectedPlayer) => this.setState({ selectedPlayer })} />
      </Container>
    )
  }
}

export default CreationEquipe;
